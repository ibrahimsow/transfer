<?php 

require 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));

// require_once('models/genre.php');

// require_once('models/expediteur.php');

switch ($action) {
	default:
        defaultPage();
        break;

}

function defaultPage() {

	global $twig, $baseurl;
    
    $template = $twig->load('home.html.twig');
    echo $template->render( array('baseurl' => $baseurl) );
}

// echo '<a href="/annuaire_de_films_type_allocine/films/list">films</a>';