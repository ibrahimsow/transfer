<?php 

require 'vendor/autoload.php';
require 'dao/FileDao.php';
require 'models/connection_bdd.php';

$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));

switch ($action) {
    case 'pagedownload':
        pageDownload();
        break;
    default : 
        download();
}

function pageDownload() {

    global $twig, $baseurl, $id;
    
    $file = FileDao::findByUUID($id);

    $template = $twig->load('page-download.html.twig');
    
    $url = $baseurl . "download/file/" . $file[0]['uuid'];

    echo $template->render( 
        array(
            'url' => $url,
            'baseurl' => $baseurl
        )
    );

}

function download() {

    global $twig, $baseurl, $id;

    $file = FileDao::findByUUID($id);

    if ($file == null) {
    	echo "File not found little hacker of shit =D";
    } else {        
    	header('Content-Type: application/octet-stream');
	    header("Content-Transfer-Encoding: Binary"); 
	    header("Content-disposition: attachment; filename=\"" . $file[0]['nom'] . "\""); 
	    readfile( $file[0]['url'] );
    }

}



?>