<?php
require_once "kirjastot/kayttaja.php";
require_once "kirjastot/models/tietokantayhteys.php";

$lista = Kayttaja::getKayttajat();
?>
<!DOCTYPE HTML>
<html>
    <head><title>Otsikko</title></head>
    <body>
        <h1>Listaelementtitesti</h1>
        <ul>
            <?php foreach ($lista as $asia) { ?>
                <li><?php echo $asia->getTunnus(); ?></li>
                <li><?php echo $asia->getSalasana(); ?></li>
                <li><?php echo $asia->getSahkoposti(); ?></li>
                <li><?php echo $asia->getYllapitaja(); ?></li>
                <li><?php echo $asia->getNimi(); ?></li>
            <?php } ?>
        </ul>
    </body>
</html>

