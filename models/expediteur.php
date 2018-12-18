<?php
    require'models/connection_bdd.php';


    function expediteur(){
        global $basedonne;


        $sql = "INSERT INTO expediteur (mail, date_envoi)
        VALUES ('".$_POST["email_expediteur"]."',NOW())";

        $requete = $basedonne->prepare($sql);
        $requete->execute();    
        return $requete->fetchAll(PDO::FETCH_ASSOC);    
    
        
    }


    function destinataire(){
        global $basedonne;

        $sql = "INSERT INTO destinataire (mail)
        VALUES ('".$_POST["email_destinataire"]."')";
     
        $requete = $basedonne->prepare($sql);
        $requete->execute();    
        return $requete->fetchAll(PDO::FETCH_ASSOC);   
        
    }


    function fichier(){
        global $basedonne;

        for( $i=0; $i<count( $_FILES["fichier"]["name"]); $i++){
                $Filename =  ($_FILES['fichier']['name'])[$i];
                $temp_name  = $_FILES['fichier']['tmp_name'][$i];
                $sql = "INSERT INTO fichier (nom, date_envoi, expediteur)
                VALUES ('$Filename',NOW(),'".$_POST["email_expediteur"]."')";
            
                $requete = $basedonne->prepare($sql);
                $requete->execute();    
                return $requete->fetchAll(PDO::FETCH_ASSOC);  
                
        
    }

    
    function message(){
        global $basedonne;

        $sql = "INSERT INTO info (message, date_envoi)
        VALUES ('".$_POST["message"]."',NOW())";

        $requete = $basedonne->prepare($sql);
        $requete->execute();    
        return $requete->fetchAll(PDO::FETCH_ASSOC);    
        
    }
