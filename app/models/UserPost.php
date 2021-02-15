<?php
    /*
    * UserPost  Class
    * To access all posts and search post with filters and condations 
    * 
    */
    class UserPost {
    // DB stuff
    private $db;
    private $table = 'posts';


    // Post Properties
    public $id;
    public $category_id;
    public $category_name;
    public $title;
    public $body;
    public $user_id;
    public $created_at;

        public function __construct() {
            $this->db = new Database;
        }

        public function getPosts() {
            $query = 'SELECT c.name as category_name, p.id, p.category_id, p.title, p.body, p.user_id,u.user_email, p.created_at
            FROM ' . $this->table . ' p
            LEFT JOIN
              categories c ON p.category_id = c.id
            LEFT JOIN
            users u ON p.user_id = u.user_id
            ORDER BY
              p.created_at DESC';
             $Resultstatement= $this->db->query($query);

             $Resultstatement->execute();

            return $Resultstatement;
        }
 
        public function getAvgPostLenByMonth() {
            $query = 'SELECT AVG(LENGTH(body)) as "averagePostLength",MONTH(created_at) as monthNo,MONTHNAME(created_at) as monthName 
            FROM ' . $this->table . ' GROUP BY MONTH(created_at)';
             $Resultstatement= $this->db->query($query);

             $Resultstatement->execute();

            return $Resultstatement;
        }
        public function getLongestPostLenByMonth() {
            $query = 'SELECT MAX(LENGTH(body)) as "averagePostLength",MONTH(created_at) as monthNo,MONTHNAME(created_at) as monthName 
            FROM ' . $this->table . ' GROUP BY MONTH(created_at)';
             $Resultstatement= $this->db->query($query);

             $Resultstatement->execute();

            return $Resultstatement;
        }
        public function getTotalPostsPerWeek() {
            $query = 'SELECT WEEK(created_at) weekNo, COUNT(*) as totalPosts 
            FROM ' . $this->table . ' GROUP BY WEEK(created_at)';
             $Resultstatement= $this->db->query($query);

             $Resultstatement->execute();

            return $Resultstatement;
        }
        public function getUsersAvgPostsPerMonth() {
            $query = 'SELECT AVG(TotalPost) as totalAvgPosts,avg_posts_per_month.user_id,u.user_email
            FROM (
            SELECT count(*) as TotalPost,user_id,MONTH(created_at) as MonthNo
                        FROM '.$this->table.' GROUP BY MONTH(created_at),user_id
            )avg_posts_per_month
            left JOIN users u on avg_posts_per_month.user_id=u.user_id
            GROUP BY user_id';
             $Resultstatement= $this->db->query($query);

             $Resultstatement->execute();

            return $Resultstatement;
        }

    }//class UserPost end
