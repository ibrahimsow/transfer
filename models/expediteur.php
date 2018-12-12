<?php
    require'models/connection_bdd.php';


    function liste(){
        global $basedonne;

        $sql = "SELECT films.titre,films.annee,films.description,films.image_film, films.bande_annonce, 
        GROUP_CONCAT(DISTINCT genre.type SEPARATOR ', ') AS genre,
        GROUP_CONCAT(DISTINCT realisateur.realisateur SEPARATOR ', ') AS realisateur,
        GROUP_CONCAT(DISTINCT acteur.acteur SEPARATOR ', ') AS acteur
        FROM film_genre 
        INNER JOIN films ON film_genre.film = films.id
        INNER JOIN film_realisateur ON film_realisateur.film = films.id
        INNER JOIN realisateur ON realisateur.id = film_realisateur.realisateur
        INNER JOIN genre ON genre.id = film_genre.genre
        INNER JOIN film_acteur ON film_acteur.film = films.id
        INNER JOIN acteur ON acteur.id = film_acteur.acteur
        GROUP BY films.titre";
        
        $requete = $basedonne->prepare($sql);
        $requete->execute();    
        return $requete->fetchAll(PDO::FETCH_ASSOC);    
    }
