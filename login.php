<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
</html>
<?php
session_start();
$sivu = "kirjautuminen.php";
require_once 'libs/kayttaja.php';
require_once 'views/pohja.php';


$kayttaja = $_POST["username"];
$salasana = $_POST["password"];

if (empty($_POST["username"]) || empty($_POST["password"])) {
    naytaNakyma("login", array(
        'kayttaja' => $kayttaja,
        'virhe' => "Tarvittavaa tietoa puuttuu."
    ));
}

if (etsiKayttajaTunnuksellilla($kayttaja, $salasana)) {
    $_SESSION['kirjautunut'] = $kayttaja;
    header('Location: html-demo/index.html');
} else {
    naytaNakyma("login", array(
        'kayttaja' => $kayttaja,
        'virhe' => "Tunnus ja salasana eivät täsmää",
    ));
}
