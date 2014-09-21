<?php 
session_start();
if(isset($_SESSION['kayttaja'])) {
    $kayttaja = $_SESSION['kayttaja'];
    return true;
} else {
    return false;
}
