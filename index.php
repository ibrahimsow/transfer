<?php 


// rooting
$requete = explode("/", trim($_SERVER['REQUEST_URI'], "/"));

$controller=(count($requete)=== 1)?  "home":$requete[1];
$action=(count($requete) < 3)? "showform": $requete[2];
$id=(count($requete) < 4)? 0: (int)$requete[3];

switch ($controller) {
        case 'expediteur':
        require_once("controllers/expediteur_controller.php");
        break;

    default:
        require_once("controllers/expediteur_controller.php");
        break;
}




?>