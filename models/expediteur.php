<?php
    require'models/connection_bdd.php';


    function expediteur(){
        global $basedonne;

        if (isset($_POST['envoyer'])){
        $sql = "INSERT INTO expediteur (mail, date_envoi)
        VALUES ('".$_POST["email_expediteur"]."',NOW())";

        $requete = $basedonne->prepare($sql);
        $requete->execute();    
        return $requete->fetchAll(PDO::FETCH_ASSOC);    
    }
        
    }


    function destinataire(){
        global $basedonne;
        if (isset($_POST['envoyer'])){
        $sql = "INSERT INTO destinataire (mail)
        VALUES ('".$_POST["email_destinataire"]."')";
     
        $requete = $basedonne->prepare($sql);
        $requete->execute();    
        return $requete->fetchAll(PDO::FETCH_ASSOC);    
    }
        
    }


    function fichier(){
        global $basedonne;
        if (isset($_POST['envoyer'])){
        $Filename= ( $_FILES['fichier']['name']);
        $temp_name  = $_FILES['fichier']['tmp_name'];
        $sql = "INSERT INTO fichier (nom)
        VALUES ('$Filename')";
     
        $requete = $basedonne->prepare($sql);
        $requete->execute();    
        return $requete->fetchAll(PDO::FETCH_ASSOC);    
    }
        
    }

    
    function message(){
        global $basedonne;
        if (isset($_POST['envoyer'])){
            $sql = "INSERT INTO info (message)
            VALUES ('".$_POST["message"]."')";
     
        $requete = $basedonne->prepare($sql);
        $requete->execute();    
        return $requete->fetchAll(PDO::FETCH_ASSOC);    
    }
        
    }
