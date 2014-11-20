<?php
/**
 * Step 1: Require the Slim Framework
 *
 * If you are not using Composer, you need to require the
 * Slim Framework and register its PSR-0 autoloader.
 *
 * If you are using Composer, you can skip this step.
 */
require 'Slim/Slim.php';

\Slim\Slim::registerAutoloader();

/**
 * Step 2: Instantiate a Slim application
 *
 * This example instantiates a Slim application using
 * its default settings. However, you will usually configure
 * your Slim application now by passing an associative array
 * of setting names and values into the application constructor.
 */
$app = new \Slim\Slim();

/**
 * Step 3: Define the Slim application routes
 *
 * Here we define several Slim application routes that respond
 * to appropriate HTTP request methods. In this example, the second
 * argument for `Slim::get`, `Slim::post`, `Slim::put`, `Slim::patch`, and `Slim::delete`
 * is an anonymous function.
 */

// GET route
$app->get(
    '/:type/:year',
    function ($type,$year) {
      $chapters = array();
      require_once 'lib/mysql.php';
      $db = connect_db();
      $query_command = "select * from jwsj4.".$type." where Year=".$year;
      $result = mysql_query($query_command,$db) ;//or die(mysql_error);
      if(!$result){
        echo json_encode(array('Chapters' => 'No Result' ));;
      }else{
        while($row = mysql_fetch_array($result, MYSQL_ASSOC))
          {
              array_push($chapters,$row['Chapter']);
          }

        echo json_encode(array('Chapters' => $chapters ));
      }

    }
);

$app->get('/:type/:year/:chapter',function ($type,$year,$chapter) {
      require_once 'lib/mysql.php';
      $statusResult = array();
      $db = connect_db();
      $query_command = "select * from jwsj4.".$type." where Year=".$year." and Chapter=".$chapter;
      $result = mysql_query($query_command,$db) ;//or die(mysql_error);
      if(!$result){
        echo json_encode(array('Chapters' =>'No Result'));;
      }else{
        while($row = mysql_fetch_array($result, MYSQL_ASSOC))
          {
              array_push($statusResult,$row['Int_Review_R1']);
              array_push($statusResult,$row['Int_Review_R2']);
              array_push($statusResult,$row['TSG_RFC']);
              array_push($statusResult,$row['TSG_RFD']);
              array_push($statusResult,$row['DSG_RFD']);
              array_push($statusResult,$row['IWG_RFD']);
              array_push($statusResult,$row['Signed_Off']);
              array_push($statusResult,$row['Signed_Off_Timestamp']);
          }

        echo json_encode(array('Status' => $statusResult ));
      }

    }
);


// POST route
$app->post(
    '/post/:type/:year/:chapter/:Int_Review_R1/:Int_Review_R2/:TSG_RFC/:TSG_RFD/:DSG_RFD/:IWG_RFD/:Signed_Off',
    function ($type,$year,$chapter,$Int_Review_R1,$Int_Review_R2,$TSG_RFC,$TSG_RFD,$DSG_RFD,$IWG_RFD,$Signed_Off) {
      require_once 'lib/mysql.php';
      $db = connect_db();
      $sql_insert_query ='INSERT INTO jwsj4.'.$type.'(Id,Year,Chapter,Int_Review_R1,Int_Review_R2,TSG_RFC,DSG_RFD,IWG_RFD,TSG_RFD,Signed_Off,Signed_Off_Timestamp)
      VALUES (NULL,"'.$year.'","'.$chapter.'","'.$Int_Review_R1.'","'.$Int_Review_R2.'","'.$TSG_RFC.'","'.$TSG_RFD.'","'.$DSG_RFD.'","'.$IWG_RFD.'","'.$Signed_Off.'",NOW())';
      mysql_query($sql_insert_query,$db) ;//or die(mysql_error);
      echo  $sql_insert_query;
    }
);

// PUT route
$app->put(
    '/put',
    function () {
        echo 'This is a PUT route';
    }
);

// PATCH route
$app->patch('/patch', function () {
    echo 'This is a PATCH route';
});

// DELETE route
$app->delete(
    '/delete',
    function () {
        echo 'This is a DELETE route';
    }
);

/**
 * Step 4: Run the Slim application
 *
 * This method should be called last. This executes the Slim application
 * and returns the HTTP response to the HTTP client.
 */
$app->run();
