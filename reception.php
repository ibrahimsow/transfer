<?php
if(!empty($_POST['submit'])){
  var_dump($_POST);
}
function upload ($index, $destination, $extention=false){
  if(empty($_FILES[$index]) || $_FILES[$index]["error"] > 0 ){
    echo "une erreur est survenue durant le chargement.";
    return false;
  }
  $ext = strtolower(substr(strrchr($_FILES[$index]["name"], "."),1));
  if($extention != false && !in_array($ext, $extension)){
    echo "L'extension ne correspond pas au type souhiaté";
    return false;
  }
  return move_uploaded_file($_FILES[$index]['tmp_name'], $destination.$_FILES[$index]['name']);
  }
  if (!empty($_POST['submit'])){
    var_dump($_FILES);
    if(upload("fichier","fichier/", array("png","jpg","jpeg","gif","bmp")) == true){
      echo "Ok";
    }
  }





?>
