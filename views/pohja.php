<!DOCTYPE HTML>
<html>
    <head>
        <title>Linnut</title>

    </head>
    <body>
        <div class="row">
            <div class="col-md-2">
                <h3>Navigation</h3>
                <div class="panel panel-default">
                    <ul class="nav">
                        <li><a href="html-demo/index.html">Etusivu</a></li>
                        <li class="active"><a href="login.php">Kirjaudu</a></li>
                        <li><a href="html-demo/laji-tietokanta.html">Lajit</a></li>
                        <li><a href="html-demo/havainto-tietokanta.html">Havainnot</a></li>
                    </ul>
                </div>
            </div>
            <?php require_once 'libs/common.php'; ?>
            <?php require_once 'views/' . $sivu; ?>
            <?php if (!empty($data->virhe)): ?>
                <div class="alert alert-danger"><?php echo $data->virhe; ?></div>
            <?php endif; ?>
        </div>
    </body>
</html>