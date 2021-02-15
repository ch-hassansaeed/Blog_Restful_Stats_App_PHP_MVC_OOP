<?php
    /*
    * JwtAccesstoken  Class
    * To make The access token and get access token from database
    * 
    */
    class JwtAccesstoken {
        private $db;
        private $table = 'jwt_accesstoken';

        public function __construct() {
            $this->db = new Database;
        }

        public function getAccessToken() {
            $query='SELECT * FROM '.$this->table.' order by timestamp DESC LIMIT 1';
            $this->db->query($query);

            $result = $this->db->single();

            return $result;
        }
        public function registerAccessToken() {
            $query='INSERT INTO '.$this->table." (access_token, status, timestamp) VALUES ( UUID(), '1', CURRENT_TIMESTAMP)";
            $this->db->query($query);

            $result = $this->db->execute();

            return $result;
        }
        
    }
