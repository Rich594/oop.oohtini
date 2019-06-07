<?php

defined('DS') ? null : define ('DS', DIRECTORY_SEPARATOR); // DIRECTORY_SEPARATOR is file path separator e.g. \ - this is create this for the file path route below
define('SITE_ROOT', DS . 'webstaging' . DS . 'e$' . DS . 'web' . DS . 'vascular_devices');  //Putting file path into SITE_ROOT

//define('SITE_ROOT', $_SERVER['DOCUMENT'] . DS . 'gallery');  //NEW - for online access

//defined('INCLUDES_PATH') ? null : define('INCLUDES_PATH', SITE_ROOT . DS . 'admin' . DS .'includes');

ob_start();  //NEW = for online access

require_once('db_connection.php');
require_once('classes\series_views.php');
require_once('classes\figure_views.php');
require_once('classes\counts.php');
?>