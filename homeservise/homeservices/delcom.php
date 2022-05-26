<?php

include_once "scripts/checklogin.php";
include_once "scripts/helpers.php";
include_once "scripts/DB.php";

if (!check($_SESSION['username'])) {
    header('Location: logout.php');
    exit();
}
if (isset($_POST['update'])) {
    $input = clean($_POST);
    
    $isRemoved = DB::query("DELETE FROM commande WHERE idc=?", [$input['id']]);

    if ($isRemoved) {
        header('Location: commande.php?msg=success');
        exit();
    } else {
        header('Location: commande.php?msg=failed');
        exit();
    }
}
