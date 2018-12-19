<?php 


// rooting
$requete = explode("/", trim($_SERVER['REQUEST_URI'], "/"));

$controller=(count($requete)=== 1)?  "home":$requete[1];
$action=(count($requete) < 3)? "showform": $requete[2];
$id=(count($requete) < 4)? 0: (int)$requete[3];
<<<<<<< HEAD
// switch ($controller) {
//         case 'realisateur':
//         require_once("controllers/realisateur_controller.php");
//         break;

//         case 'acteur':
//         require_once("controllers/acteur_controller.php");
//         break;

//         case 'annee':
//         require_once("controllers/annee_controller.php");
//         break;

//         case 'acteur':
//         require_once("controllers/acteur_controller.php");
//         break; 

//     default:
//         require_once("controllers/films_controller.php");
//         break;
// }
=======

switch ($controller) {
        case 'expediteur':
        require_once("controllers/expediteur_controller.php");
        break;

    default:
        require_once("controllers/expediteur_controller.php");
        break;
}
>>>>>>> bd176a710c10b8b1f95bfd78cbc3250e5c2fc3d0




?>