<?php 
  // Headers
  header('Access-Control-Allow-Origin: *');
  header('Content-Type: application/json');

  // post state query result
  $Postresult = $data["postsStatResult"];

  // Check if any posts
  if(isset($Postresult)) {
    // Post array
    $posts_arr = array();

    while($row = $Postresult->fetch(PDO::FETCH_ASSOC)) {
      extract($row);//extract datbase row cols as objects
      //make response layout array wrt to each filter case
      switch($_REQUEST["case"]){
        case "avg_post_len_by_month":
            $post_item = array(
                'Average Post Length' => intval($averagePostLength),
                'Month' => $monthName
              );
            break;
        case "longest_post_len_by_month":
            $post_item = array(
                'Longest Post Length' => intval($averagePostLength),
                'Month' => $monthName
              );
            break; 
        case "total_posts_per_week":
            $post_item = array(
                'Total Posts' => intval($totalPosts),
                'Week No' => $weekNo
              );
            break;   
        case "avg_users_posts_per_month":
            $post_item = array(
                'Total Average Posts' => intval($totalAvgPosts),
                'Username' => $user_email
              );
            break; 
        default:
            $data = ['invalidMessage' => 'Invalid Case Name']; 
            $this->view('UserPost/NotFoundJson', $data);
            die();//Invalid Case Name
        }//switch end
      // Push to "data"
      array_push($posts_arr, $post_item);
    }
    // set response code - 200 OK
    http_response_code(200);
    // Turn to JSON & output
    echo json_encode($posts_arr);

  } else {
    // No Posts
    echo json_encode(
      array('message' => 'No Posts Found')
    );
  }


