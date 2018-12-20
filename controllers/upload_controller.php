<?php 

require 'vendor/autoload.php';
require 'dao/FileDao.php';
require 'dao/Utils.php';
require 'models/connection_bdd.php';

$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array(
    'cache' => false,
));

switch ($action) {
    case 'uploadfile':
        uploadFile();
        break;
    case 'listfiles' :
    	listFiles();
        break;
}

function uploadFile() {

    global $twig, $baseurl;

	$nameFile = $_FILES['fichier']['name'];
	$expediteur = $_POST['email_expediteur'];
	$size = $_FILES['fichier']['size'];
	$path = "pathSystem/" . $_FILES['fichier']['name'];
	$key = null;
    
    $folderExpediteur = "/home/stagiaire/Documents/web/transfert/files/" . sha1($expediteur);
    $target = $folderExpediteur . "/" . sha1(date('Y/m/d')) . "-" . $nameFile;

    $template = null;
    $arrayRender = null;

    if (createFolder($folderExpediteur)) {
        if (moveFile( $_FILES['fichier']['tmp_name'], $target)) {
            $idNewFile = FileDao::createNewFile($nameFile, $expediteur, $size, $target, $key);
            $file = FileDao::findById($idNewFile);
            $urlToSend = $baseurl . "download/pagedownload/" . $file[0]['uuid'];
   
            /* 
                send mail here 

                $contentEmail = "
                <pre>
                Bonjour, Monsieur $expediteur vous a envoyer un fichier, 
                Vous pouvez le télécharger en cliquant <a href=\"$urlToSend\">ici</a>
                Merci aller manger un grec.
                </pre>
                ";
            
            */
            $template = $twig->load('result-upload.html.twig');
            $arrayRender = array(
                'baseurl' => $baseurl,
                'url' => $urlToSend
            );

            
        } else {
            $arrayRender = array(
                'baseurl' => $baseurl,
                "errorMessage" => "Impossible to move file"
            );
        }
    } else {
        $arrayRender = array(
            'baseurl' => $baseurl,
            "errorMessage" => "Impossible to create folder"
        );
    }

    if ($template == null) {
        $template = $twig->load('error-upload.html.twig');
    }

    echo $template->render( 
        $arrayRender
    );

}

function listFiles() {

	$allFiles = FileDao::findAllFiles();

	global $twig, $baseurl;
    
    $template = $twig->load('list-files.html.twig');
    echo $template->render( 
    	array('title'=>'expediteur', 
    		'baseurl' => $baseurl,
    		'files' => $allFiles
   		)
   	);

}


?>