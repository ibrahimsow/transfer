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

    $expediteur = $_POST['email_expediteur'];
    $key = uniqid();
    
    $folderExpediteur = FOLDER_DESTINATION . sha1($key);

    $template = null;
    $arrayRender = null;

    if (createFolder($folderExpediteur)) {
        $urlToSend = "<ul>";
        for ($i = 0; $i < count($_FILES['fichier']['tmp_name']); $i++) {
            $nameFile = $_FILES['fichier']['name'][$i];
            
            $size = $_FILES['fichier']['size'][$i];
            $path = "pathSystem/" . $_FILES['fichier']['name'][$i];
            $target = $folderExpediteur . "/" . sha1(date('Y/m/d')) . "-" . $nameFile;
            if (moveFile( $_FILES['fichier']['tmp_name'][$i], $target)) {
                $idNewFile = FileDao::createNewFile($nameFile, $expediteur, $size, $target, $key);
                $file = FileDao::findById($idNewFile);
                $urlToSend .= "<li><a href='". $baseurl . "download/pagedownload/" . $file[0]['uuid'] ."'>". $nameFile ."</a></li>";
            } else {
                $arrayRender = array(
                    'baseurl' => $baseurl,
                    "errorMessage" => "Impossible to move file : " . $nameFile
                );
            }
        }
        $urlToSend .= "</ul>";
        /* 
            send mail here 
        
        */
        $from = $expediteur;
        $to = "ibrahimsow.sow@gmail.com";
        $subject = "Files Walk";
        $message = " <pre> Bonjour, $expediteur vous a envoyer des fichiers via notre site File Walk, 
        Voici la liste des fichiers à télécharger : </pre>" . $urlToSend . "
        
        <pre>Merci de votre confiance.</pre>";
        $headers = "From:" . $from;
           
        mail($to,$subject,$message, $headers);
        echo "Félicitation vos fichier ont été envoyé avec succès.";

        $template = $twig->load('result-upload.html.twig');
        $arrayRender = array(
            'baseurl' => $baseurl,
            'url' => $urlToSend
        );

            
    }  else {
        $arrayRender = array(
            'baseurl' => $baseurl,
            "errorMessage" => "Impossible to create fodler"
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