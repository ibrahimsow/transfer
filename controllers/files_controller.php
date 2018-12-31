<?php 

require 'vendor/autoload.php';
require 'dao/FileDao.php';

$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));


switch ($action) {

    case 'test' : 
        $allFiles = FileDao::findByEmail($id);
        echo json_encode($allFiles);
        break;

	default:
        defaultPage();
        break;

}

function defaultPage() {

	global $twig, $baseurl;
    
    $template = $twig->load('files.html.twig');
    echo $template->render( array('baseurl' => $baseurl) );
}



