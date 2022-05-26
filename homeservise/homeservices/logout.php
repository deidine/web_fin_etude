<?php

include_once "scripts/session.php";

if (isset($_SESSION['username'])) {
    $_SESSION['username'] = null;
    session_unset();
    session_destroy();
}

header('Location: index.php');
exit();
