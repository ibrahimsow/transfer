<?php 

// rooting
$requete = explode("/", trim($_SERVER['REQUEST_URI'], "/"));

$controller=(count($requete)=== 1)?  "home":$requete[1];
$action=(count($requete) < 3)? "showform": $requete[2];
$id=(count($requete) < 4)? 0 : $requete[3];

switch ($controller) {

    case 'allfiles' : 
        require_once("controllers/files_controller.php"); 
        break;
        
    case 'upload' : 
    	require_once("controllers/upload_controller.php");
        break;

    case 'download' : 
        require_once("controllers/download_controller.php");
        break;

    case 'apropos' : 
        require_once("controllers/apropos_controller.php"); 
        break;

    default:
        require_once("controllers/home_controller.php");
        break;
}



?>