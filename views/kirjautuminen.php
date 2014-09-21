<?php require_once 'libs/kayttaja.php' ?>
<div class="col-md-6">
    <h1>Kirjautuminen</h1>
    <form action="login.php" method="POST">
        Kayttajanimi: <input type="text" name="username"
                             value="<?php echo $data->kayttaja; ?>" />
        <br>Salasana: <input type="password" name="password" />
        <br><button type="submit">Kirjaudu</button>
    </form>
</div>