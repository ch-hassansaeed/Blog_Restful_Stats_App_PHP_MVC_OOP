<?php
class Pages extends Controller {
    public function __construct() {
        $this->userModel = $this->model('User');
        $this->jwtAccesstokenEntity = $this->model('JwtAccesstoken');
    }

    public function RegisterJWT() {
        $latestJwtAccessTokenRow=$this->jwtAccesstokenEntity->registerAccessToken();
        //new randam token access key is gernerated no get the latest access token key
        $latestJwtAccessTokenRow=$this->jwtAccesstokenEntity->getAccessToken();
        $latestJwtAccessToken=$latestJwtAccessTokenRow->access_token;
          // Headers
        header('Access-Control-Allow-Origin: *');
        header('Content-Type: application/json');
        // set response code - 200 
        http_response_code(200);

        // tell the user no products found
        echo json_encode(
        array("access_token" => $latestJwtAccessToken)
        );
    }
    public function TotalPostsCountStat() {
        //first generate and get access token
        $json = file_get_contents(URLROOT.'/Pages/RegisterJWT');
        $obj = json_decode($json);
        $responseAccessToken=$obj->access_token;
        //now use this access token for call json endpoint
        $url = URLROOT.'/Posts/GETAll';
        $data = array("access_token" => $responseAccessToken);
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $result = curl_exec($ch);   
        curl_close($ch);
        
        //echo $result;
        $postsObj = json_decode($result);
        $totalPostsCount=count($postsObj);

          // Headers
        header('Access-Control-Allow-Origin: *');
        header('Content-Type: application/json');
        // set response code - 200 
        http_response_code(200);

        // tell the user no products found
        echo json_encode(
        array("Total Posts" => $totalPostsCount)
        );
    }
    public function index() {
        $dbusers=$this->userModel->getUsers();

        $data = [
            'title' => 'Home page/User Management',
            'users' => $dbusers
        ];

        $this->view('index', $data);
    }

    public function aboutus() {
        echo "this is about us page";
    }




}
