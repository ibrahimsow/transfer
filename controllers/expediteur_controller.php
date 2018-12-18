<?php 

require 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));






require_once('models/expediteur.php');



switch ($action) {
    case 'showform':
        showForm();
        break;
    case 'sendform':
            sendForm();
            break;
}





function showForm(){
    global $twig, $baseurl;
    
    $template = $twig->load('expediteur.html.twig');
    echo $template->render( array('title'=>'expediteur', 'baseurl' => $baseurl) );

}


function sendForm(){
    global $twig, $baseurl;
    if (isset($_POST['envoyer'])){
    $expediteur = expediteur();
    $destinataire = destinataire();
    $fichier = fichier();
    $message = message();
    
    $template = $twig->load('expediteur.html.twig');
    echo $template->render( array('expediteur' => $expediteur, 'destinataire' => $destinataire, 'fichier' => $fichier, 'message' => $message,  'baseurl' => $baseurl) );
    }
}
