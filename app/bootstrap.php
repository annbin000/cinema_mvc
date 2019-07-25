<?php

require_once './vendor/autoload.php';

$containerBuilder = new DI\ContainerBuilder;
$containerBuilder->addDefinitions('/config.php');

try {
    $container = $containerBuilder->build();
} catch (Exception $e) {
    throw $e;
}

return $container;