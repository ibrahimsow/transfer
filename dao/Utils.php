<?php 

function createFolder($folder) {
	return (!is_dir($folder)) ? mkdir($folder) : true ;
}

function moveFile($file, $destination) {
	return move_uploaded_file( $file, $destination);
}

?>