<?php 

const FOLDER_DESTINATION = "/home/ibrahims/www/public/transfert/files/";
//const FOLDER_DESTINATION = "/home/stagiaire/Documents/web/transfert/files/";

function createFolder($folder) {
	return (!is_dir($folder)) ? mkdir($folder) : true ;
}

function moveFile($file, $destination) {
	return move_uploaded_file( $file, $destination);
}

?>