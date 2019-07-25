<?php

if (file_exists("vendor/autoload.php")) {
    require ("vendor/autoload.php");
}

require("config/routes.php");
require("config/config.php");

//$p = (empty($_GET['p'])) ? "/" : $_GET['p'];
$dispatcher = new \App\Controllers\Dispatcher();
$dispatcher->dispatch($routes, '');


//$www = \App\Models\Db::getDbh()->prepare('SELECT * FROM films');
//$www->execute();
//
//$result = $www->fetchAll();
//
//echo 'vdfd';