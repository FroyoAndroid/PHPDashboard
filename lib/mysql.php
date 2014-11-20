<?php
function connect_db(){
  $server = 'localhost';
  $user ='root';
  $password ='';
  $database = 'jwsj4';

  $conn = mysql_connect($server,$user,$password) or die(mysql_error);
  mysql_select_db($database) or die(mysql_error);
  return $conn;
  /*
  try{
    $conn = new PDO("mysql:host=$server;dbname=$database", $user, $password);
    return $conn;
  }catch(PDOException $e){
    echo $e->getMessage();
  }
  */
}
?>
