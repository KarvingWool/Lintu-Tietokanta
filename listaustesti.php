<?php
require_once "kirjastot/kayttaja.php";
require_once "kirjastot/models/tietokantayhteys.php";

$lista = Kayttaja::getKayttajat();
?>
<!DOCTYPE HTML>
<html>
    <head><title>Listaustesti</title></head>
    <body>
        <h1>Kayttajienlistaus testi</h1>
        <?php foreach ($lista as $asia) { ?>
        
            <p><?php echo $asia->getTunnus(); ?></p>
            <ul>
                <li><?php echo $asia->getSalasana(); ?></li>
                <li><?php echo $asia->getSahkoposti(); ?></li>
                <li><?php echo $asia->getYllapitaja(); ?></li>
                <li><?php echo $asia->getNimi(); ?></li>
            </ul>
        <?php } ?>
    </body>
</html>

