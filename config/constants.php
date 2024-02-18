<?php
ob_start();

error_reporting(E_ALL);
ini_set('display_errors', 1);
?>
<?php
    //start Session
    session_start();


    //create constants to store non repeating values
    define('SITEURL_USER','http://localhost/tracehomes/');
    define('LOCALHOST', 'localhost');
    define('DB_USERNAME', 'ARTKINS');
    define('DB_PASSWORD', 'Bellachao254');
    define('DB_NAME', 'tracehomes');
    define('EMAIL_USERNAME', 'opiyodon9@gmail.com');
    define('EMAIL_PASSWORD', 'qast oqvk diqs tuke');

    $conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD) or die(mysqli_error());
    $db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error());
?>