<?php
$db_host = 'localhost';
$db_user = 'root';
$db_password = '';
$db_db = 'robot arm';
$db_port = 3306;

$connection = mysqli_connect($db_host, $db_user, $db_password, $db_db );

  //check connection 
  if(mysqli_connect_errno()):
    printf("Connect failed: %s\n", mysqli_connect_errno());
    exit();
  endif;

$v1 = $_POST['Motor1'];
$v2 = $_POST['Motor2'];
$v3 = $_POST['Motor3'];
$v4 = $_POST['Motor4'];
$v5 = $_POST['Motor5'];
$v6 = $_POST['Motor6'];


if(isset($_POST['save'])){

    echo "<br>";

    $my_query = "";

    $my_query = "select * from motor_table";
    $result = mysqli_query($connection, $my_query);

    $my_query = "INSERT INTO motor_table(Motor1,Motor2,Motor3,Motor4,Motor5,Motor6)VALUES('$v1','$v2','$v3','$v4','$v5', $v6)";
    $result = mysqli_query($connection, $my_query);
    if($result)
    {
        echo "Item successfuly Added!";
    }
    else{
        echo "ERROR: Unable to past <br>";
    }

}else if(isset($_POST['on'])) {
    echo "<br>";

    $my_query = "";

    $my_query = "select isOn from on_off_table";
    $result = mysqli_query($connection, $my_query);

    $my_query = "INSERT INTO on_off_table (isOn) VALUES(1)";
    $result = mysqli_query($connection, $my_query);
    if($result)
    {
        echo " On done successfuly ";
    }
    else{
        echo "ERROR: Unable to past <br>";
    }



}else if (isset($_POST['off'])) {
    echo "<br>";

    $my_query = "";

    $my_query = "select isOff from on_off_table";
    $result = mysqli_query($connection, $my_query);

    $my_query = "INSERT INTO on_off_table(isOff)VALUES(1)";
    $result = mysqli_query($connection, $my_query);
    if($result)
    {
        echo " Off  done successfuly ";
    }
    else{
        echo "ERROR: Unable to past <br>";
    }
}


?>
