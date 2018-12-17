<?php 

require 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));






require_once('models/expediteur.php');



switch ($action) {
    case 'list':
        showList();
        break;
}





function showList(){
    global $twig, $baseurl;
    $expediteur = expediteur();
    $destinataire = destinataire();
    $fichier = fichier();
    $message = message();
    
    $template = $twig->load('expediteur.html.twig');
    echo $template->render( array('title'=>'expediteur', 'expediteur' => $expediteur, 'destinataire' => $destinataire, 'fichier' => $fichier, 'message' => $message,  'baseurl' => $baseurl) );

}
