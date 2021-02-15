<?php 
  // Headers
  header('Access-Control-Allow-Origin: *');
  header('Content-Type: application/json');

  // Instantiate blog post object
  $post = new UserPost();

  // Blog post query
  $Postresult = $data["UserPosts"];

  // Check if any posts
  if(isset($Postresult)) {
    // Post array
    $posts_arr = array();

    while($row = $Postresult->fetch(PDO::FETCH_ASSOC)) {
      extract($row);//extract datbase row cols as objects

      $post_item = array(
        'id' => $id,
        'title' => $title,
        'body' => html_entity_decode($body),
        'username' => $user_email,
        'category_id' => $category_id,
        'category_name' => $category_name
      );

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


