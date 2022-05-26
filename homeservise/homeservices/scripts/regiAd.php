<?php

require_once 'session.php';
require_once 'DB.php';
require_once 'helpers.php';

if (isset($_POST['register'])) {
    $input = clean($_POST);

    $name = $input['name'];
    $id_cat= $input['id_cat'];
    $des = $input['desc'];
    $lname = $input['lname'];
    $contact = $input['contact'];
    $password = $input['password'];
    $filename = $_FILES["photo"]["name"];
	$tempname = $_FILES["photo"]["tmp_name"];
    $folder = "../storage/".$filename;

    if (move_uploaded_file($tempname, $folder)) {
        echo "Image uploaded successfully";
    }else{
        echo "Failed to upload image";
    }
 
    $isProviderCreated = DB::query("INSERT INTO `admin`(username,lastname,tel,password,img,id_cat,des)
     values( ?, ?, ?, ?, ?,?,?)", [
        $name,$lname,$contact,$password,$filename,$id_cat,$des
        ]);

    if ($isProviderCreated) {
        header('Location: ../enregistrerAd.php?msg=success');
        exit();
    } else {
        unlink('../storage/'.$file1);
        header('Location: ../enregistrerAd.php?msg=failed');
        exit();
   
} }
