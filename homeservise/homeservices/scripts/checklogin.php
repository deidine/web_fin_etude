<?php

require_once 'session.php';

function check($type )
{
if(isset($_SESSION['username']) and   $_SESSION['username'] != null){

    return true;
    
    }else{
    return header('location:index.php');
    }}

//     session_start();
// function check($type )
// {
// if(isset($_SESSION['username']) and   $_SESSION['username'] != null){

//     return true;
    
//     }else{
//     return header('location:index.php');
//     }}

//     if (!check($_SESSION['username'])) {
//         header('Location: logout.php');
//         exit();
//     }