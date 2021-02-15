<?php
//print_r($data);
?>
<?php 
  // Headers
  header('Access-Control-Allow-Origin: *');
  header('Content-Type: application/json');


  // post state query result
  $invalidMessage = $data["invalidMessage"];

 // set response code - 404 Not found
 http_response_code(404);
        
 // tell the user no products found
 echo json_encode(
     array("message" => $invalidMessage)
 );
  
