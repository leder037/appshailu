<?php 

require 'funciones.php';
require 'database.php';
require __DIR__ . '/../vendor/autoload.php';
require __DIR__ . '/../models/ActiveRecord.php';


// Conectarnos a la base de datos
use Model\ActiveRecord;
ActiveRecord::setDB($db);