<?php
include_once "scripts/checklogin.php";
include_once "include/header.php";
include_once "scripts/DB.php";
include_once "scripts/helpers.php";
$sql1="SELECT * from admin where id=?";
$bookings = DB::query($sql1,[$_POST['id']])->fetchAll(PDO::FETCH_OBJ);
$img=$bookings[0]->img;
if (!check($_SESSION['username'])) {
    header('Location: logout.php');
    exit();
}

if (isset($_POST['register'])) {
    $input = clean($_POST);

    $name = $input['name'];
    $lname = $input['lastname'];
    $tel = $input['telephone'];
    $cat = $input['id_cat'];
    $descr = $input['descr'];
    $password = $input['password'];
    $filename = $_FILES["photo"]["name"];
	$tempname = $_FILES["photo"]["tmp_name"];
    $folder = "storage/".$filename;
    if(empty($filename)){
        $file=$img;
        } else $file=$filename;
    if (move_uploaded_file($tempname, $folder)) {
        echo "Image uploaded successfully";
    }else{
        echo "Failed to upload image";
    }
 

    $isProviderCreated = DB::query(
        "UPDATE admin SET id_cat=?, username=?, lastname=?, tel=?, 
        img=?, des=?, password=? WHERE id=".$_POST['id']."",
        [$cat,$name,$lname,$tel,$file, $descr, $password]
    );

    if ($isProviderCreated) {
  header('Location: admin.php');
     exit();
    } else {
        echo "fallse";
    
    }
}
