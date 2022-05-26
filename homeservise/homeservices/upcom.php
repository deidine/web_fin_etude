<?php
include_once "scripts/checklogin.php";
include_once "include/header.php";
include_once "scripts/DB.php";
include_once "scripts/helpers.php";
if (isset($_POST['modifier'])) {
    $input = clean($_POST);

    $et = $input['etats'];
   
    $isProviderCreated = DB::query(
        "UPDATE commande SET  stutus=? WHERE idc=".$_POST['id']."",
        [$et]
    );

    if ($isProviderCreated) {
  header('Location: commande.php');
     exit();
    } else {
        echo "fallse";
    
        }    
}
