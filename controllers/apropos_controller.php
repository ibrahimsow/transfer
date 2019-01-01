<?php 

require 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));


switch ($action) {
	default:
        defaultPage();
        break;

}

function defaultPage() {

	global $twig, $baseurl;
    
    $template = $twig->load('apropos.html.twig');
    echo $template->render( array('baseurl' => $baseurl) );
}
