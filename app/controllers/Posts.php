<?php
class Posts extends Controller {
    public function __construct() {
        $this->userPostsEntity = $this->model('UserPost');
        $this->jwtAccesstokenEntity = $this->model('JwtAccesstoken');
    }

    public function index() {
        echo "Silence is Golden";
    }

    public function GETAll() {
        //input query string should have acces_token
        if(!isset($_REQUEST["access_token"]))
        {
            $data = ['invalidMessage' => 'access_token input required!']; 
            $this->view('UserPost/NotFoundJson', $data); 
            die();//Case Not Found
        }
        $latestJwtAccessTokenRow=$this->jwtAccesstokenEntity->getAccessToken();
        $latestJwtAccessToken=$latestJwtAccessTokenRow->access_token;
   
        if(trim($_REQUEST["access_token"])!=$latestJwtAccessToken)
        {
            $data = ['invalidMessage' => 'access_token is invalid.']; 
            $this->view('UserPost/NotFoundJson', $data); 
            die();//Case Not Found
        }
        //if access token is valid then get all posts
        $dbUserPosts=$this->userPostsEntity->getPosts();
        $data = [
            'title' => 'All Posts Page',
            'UserPosts' => $dbUserPosts
        ];

        $this->view('UserPost/GETAll', $data);
    }

    public function Search() {
        //input query string should have case filter string
        if(!isset($_REQUEST["case"]))
        {
            $data = ['invalidMessage' => 'Input Case Not Found']; 
            $this->view('UserPost/NotFoundJson', $data); 
            die();//Case Not Found
        }
        //input query string should have acces_token
        if(!isset($_REQUEST["access_token"]))
        {
            $data = ['invalidMessage' => 'access_token input required!']; 
            $this->view('UserPost/NotFoundJson', $data); 
            die();//Case Not Found
        }
        $latestJwtAccessTokenRow=$this->jwtAccesstokenEntity->getAccessToken();
        $latestJwtAccessToken=$latestJwtAccessTokenRow->access_token;

        if(trim($_REQUEST["access_token"])!=$latestJwtAccessToken)
        {
            $data = ['invalidMessage' => 'access_token is invalid.']; 
            $this->view('UserPost/NotFoundJson', $data); 
            die();//Case Not Found
        }
        //if access token is valid then work on posts serach stats
        //get database data wrt to each filter case
        switch($_REQUEST["case"]){
            case "avg_post_len_by_month":
                $postsStatResult=$this->userPostsEntity->getAvgPostLenByMonth();
                break;
            case "longest_post_len_by_month":
                $postsStatResult=$this->userPostsEntity->getLongestPostLenByMonth();
                break; 
            case "total_posts_per_week":
                $postsStatResult=$this->userPostsEntity->getTotalPostsPerWeek();
                break;   
            case "avg_users_posts_per_month":
                $postsStatResult=$this->userPostsEntity->getUsersAvgPostsPerMonth();
                break; 
            default:
                $data = ['invalidMessage' => 'Invalid Case Name']; 
                $this->view('UserPost/NotFoundJson', $data);
                die();//Invalid Case Name

        }
        
        $data = [
            'title' => 'Posts Stat Page',
            'postsStatResult' => $postsStatResult
        ];

        $this->view('UserPost/Search', $data);
    }


}
