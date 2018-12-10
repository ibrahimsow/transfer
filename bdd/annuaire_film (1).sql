-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Dim 02 Décembre 2018 à 23:46
-- Version du serveur :  10.3.11-MariaDB-1:10.3.11+maria~bionic-log
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `annuaire_film`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `id` int(4) NOT NULL,
  `acteur` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_acteur` char(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `acteur`
--

INSERT INTO `acteur` (`id`, `acteur`, `image_acteur`) VALUES
(1, 'Michael B. Jordan', 'img/acteurs/michaelbjordan.jpg'),
(2, 'Sylvester Stallone', 'img/acteurs/sylvester_stallone.jpeg'),
(3, 'Dolph Lundgren', 'img/acteurs/dolph_lundgren.jpeg'),
(4, 'Floriran Munteanu', 'img/acteurs/florian_munteanu.jpeg'),
(5, 'Tessa Thompson', 'img/acteurs/tessa_thompson.jpeg'),
(6, 'Wood Harris', 'img/acteurs/wood_harris.jpeg'),
(7, 'Russell Hornsby', 'img/acteurs/russel_hornsby.jpeg'),
(8, 'André Ward', 'img/acteurs/andre_ward.jpeg'),
(9, 'Christian Clavier', 'img/acteurs/christian_clavier.jpeg'),
(10, 'Guillaume Briat', 'img/acteurs/guillaume_briat.jpeg'),
(11, 'Alex Lutz', 'img/acteurs/alex_lutz.jpeg'),
(12, 'Alexandre Astier', 'img/acteurs/alexandre_astier.jpeg'),
(13, 'Elie Semoun', 'img/acteurs/elie_semoun.jpeg'),
(14, 'Daniel Mesguich', 'img/acteurs/daniel_mesguich.jpeg'),
(15, 'Bernard Alane', 'img/acteurs/bernard_alane.jpeg'),
(16, 'Gérard Hernandez', 'img/acteurs/gerard_hernandez.jpeg'),
(17, 'Jon Foo', 'img/acteurs/jon_foo.jpeg'),
(18, 'Kelly Overton', 'img/acteurs/kelly_overton.jpeg'),
(19, 'Cary-Hiroyuki Tagawa', 'img/acteurs/cary_hiroyuki_tagawa.jpeg'),
(20, 'Ian Anthony Dale', 'img/acteurs/ian_anthony_dale.jpeg'),
(21, 'Luke Goss', 'img/acteurs/luke_goss.jpeg'),
(22, 'Chiaki Kuriyama', 'img/acteurs/chiaki_kuriyama.jpeg'),
(23, 'Tamlyn Tomita', 'img/acteurs/tamlyn_tomita.jpeg'),
(24, 'Gary Daniels', 'img/acteurs/gary_daniels.jpeg'),
(25, 'Liam Hemsworth', 'img/acteurs/liam_hemsworth.jpeg'),
(26, 'Jeff Goldblum', 'img/acteurs/jeff_glodblum.jpeg'),
(27, 'Bill Pullman', 'img/acteurs/bill_pullman.jpeg'),
(28, 'Jessie Usher', 'img/acteurs/jessie_usher.jpeg'),
(29, 'Maika Monroe', 'img/acteurs/malika_monroe.jpeg'),
(30, 'Vivica A.Fox', 'img/acteurs/vivica_fox.jpeg'),
(31, 'Sela Ward', 'img/acteurs/sela_ward.jpeg'),
(32, 'William Fichtner', 'img/acteurs/william_fichtner.jpeg'),
(33, 'Amitabh Bachchan', 'img/acteurs/amitabh_bachchan.jpeg'),
(34, 'Aamir Khan', 'img/acteurs/aamir_khan.jpeg'),
(35, 'Katrina Kaif', 'img/acteurs/katrina_kaif.jpeg'),
(36, 'Lloyd Owen', 'img/acteurs/lloyd_owen.jpeg'),
(37, 'Ronit Roy', 'img/acteurs/ronit_roy.jpeg'),
(38, 'Mohammed Zeeshan Ayyub', 'img/acteurs/mohammed_zeeshan_ayyub.jpeg'),
(39, 'Sharat Saxena', 'img/acteurs/sharat_saxena.jpeg'),
(40, 'Joe Azzopardi', 'img/acteurs/joe_azzopardi.jpeg'),
(41, 'Colin Farrel', 'img/acteurs/colin_farrel.jpeg'),
(42, 'Danny Devito', 'img/acteurs/danny_devito.jpeg'),
(43, 'Eva Green', 'img/acteurs/eva_green.jpeg'),
(44, 'Michael Keaton', 'img/acteurs/michael_keaton.jpeg'),
(45, 'Nico Parker', 'img/acteurs/nico_parker.jpeg'),
(46, 'Finley Hobbins', 'img/acteurs/finley_hobbins.jpeg'),
(47, 'Joseph Gatt', 'img/acteurs/joseph_gatt.jpeg'),
(48, 'Alan Arkin', 'img/acteurs/alan_arkin.jpeg'),
(49, 'Marie-France Pisier', 'img/acteurs/marie_france_pisier.jpeg'),
(50, 'Janusz Olejniczak', 'img/acteurs/janusz_olejniczak.jpeg'),
(51, 'Sophie Marceau', 'img/acteurs/sophie_marceau.jpeg'),
(52, 'Féodor Atkine', 'img/acteurs/feodor_atkine.jpeg'),
(53, 'Noemi Nadelmann', 'img/acteurs/noemi_nadelmann.jpeg'),
(54, 'Aurélien Recoing', 'img/acteurs/aurelien_recoing.jpeg'),
(55, 'Pavel Slaby', 'img/acteurs/pavel_slaby.jpeg'),
(56, 'Grazyna Dylong', 'img/acteurs/grazyna_dylong.jpeg'),
(57, 'Akshay Kumar', 'img/acteurs/akshay_kumar.jpeg'),
(58, 'Pawan Chopra', 'img/acteurs/pawan_chopra.jpeg'),
(59, 'Kaizaad Kotwal', 'img/acteurs/kaizaad_kotwal.jpeg'),
(60, 'Narendra Jetley', 'img/acteurs/narendra_jetley.jpeg'),
(61, 'Nimrat Kaur', 'img/acteurs/nimrat_kaur.jpeg'),
(62, 'Sameer Ali Khan', 'img/acteurs/sameer_ali_khan.jpeg'),
(63, 'Stéphane Bak', 'img/acteurs/stephane_bak.jpeg'),
(64, 'Camélia Jordana', 'img/acteurs/camelia_jordana.jpeg'),
(65, 'Olivier Giroud', 'img/acteurs/olivier_giroud.jpeg'),
(66, 'Presnel Kimpembe', 'img/acteurs/presnel_kimpembe.jpeg'),
(67, 'Shameik Moore', 'img/acteurs/shameik_moore.jpeg'),
(68, 'Jake Johnson', 'img/acteurs/jake_johnson.jpeg'),
(69, 'Hailee Steinfeld', 'img/acteurs/hailee_steinfeld.jpeg'),
(70, 'Liev Schreiber', 'img/acteurs/liev_schreiber.jpeg'),
(71, 'Mahershala Ali', 'img/acteurs/mahershala_ali.jpeg'),
(72, 'Brian Tyree Henry', 'img/acteurs/brian_tyree_henry.jpeg'),
(73, 'Luna Lauren Velez', 'img/acteurs/luna_lauren_velez.jpeg'),
(74, 'Nicolas Cage', 'img/acteurs/nicolas_cage.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id` int(4) NOT NULL,
  `titre` char(255) NOT NULL,
  `description` text NOT NULL,
  `annee` year(4) NOT NULL,
  `image_film` char(255) NOT NULL,
  `bande_annonce` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `description`, `annee`, `image_film`, `bande_annonce`) VALUES
(1, 'Creed 2', 'La vie est devenue un numéro d\'équilibriste pour Adonis Creed entre ses obligations personnelles et son entraînement pour son prochain grand match. Et l\'enjeu du combat est d\'autant plus élevé que son rival est lié au passé de sa famille. Mais il peut compter sur Rocky Balboa à ses côtés...\n', 2019, 'img/films/creed2.jpg', 'https://www.youtube.com/embed/AdS5ux3G-Gc'),
(2, 'Asterix - le secret de la potion magique', 'À la suite d’une chute lors de la cueillette du gui, le druide Panoramix décide qu’il est temps d’assurer l’avenir du village. Accompagné d’Astérix et Obélix, il entreprend de parcourir le monde gaulois à la recherche d’un jeune druide talentueux à qui transmettre le Secret de la Potion Magique…\n', 2018, 'img/films/asterix.jpg', 'https://www.youtube.com/embed/gXbR3zonMRk'),
(3, 'Tekken', 'Adaptation cinématographique du jeu de combat japonais \"Tekken\" centrée sur l\'histoire de deux amis d\'enfance qui défient les combattants des quatre coins du globe.\n', 2010, 'img/films/tekken.jpg', 'https://www.youtube.com/embed/iPgNtmBukzA'),
(4, 'Independance Day : Resurgence', 'Nous avons toujours su qu\'ils reviendraient. La terre est menacée par une catastrophe d’une ampleur inimaginable. Pour la protéger, toutes les nations ont collaboré autour d’un programme de défense colossal exploitant la technologie extraterrestre récupérée. ', 2016, 'img/films/independance.jpg', 'https://www.youtube.com/embed/b577i7s2CiM'),
(5, 'Spider-Man : new Generation', 'présente Miles Morales, un adolescent vivant à Brooklyn, et révèle les possibilités illimitées du Spider-Verse, un univers où plus d’un peut porter le masque…', 2018, 'img/films/spider.jpg', 'https://www.youtube.com/embed/-AnN_Xg2Nps'),
(6, 'Thugs of Hindostan', 'La guerre pour la liberté sur terre se joue en pleine mer. Au 18ème siècle, la British Navy est confrontée à Khudabaksh, un \"Thug des mers\" qui se bat pour libérer son pays. Les anglais, ne sachant comment l\'affronter, font appelle à un autre Thug, Firangi Mallah.', 2018, 'img/films/thug.jpg', 'https://www.youtube.com/embed/zI-Pux4uaqM'),
(7, 'Dumbo', 'Les enfants de Holt Farrier, ex-artiste de cirque chargé de s’occuper d’un éléphanteau dont les oreilles démesurées sont la risée du public, découvrent que ce dernier sait voler…', 2019, 'img/films/dumbo.jpeg', 'https://www.youtube.com/embed/lhwAcdj3HKg'),
(8, 'La note bleue', 'Nohant 1846. Le dernier jour d\'une liaison qui dura huit ans entre George Sand et Frederic Chopin et qui vit naitre leurs plus belles oeuvres.', 1991, 'img/films/lanoteblue.jpg', 'https://www.youtube.com/embed/68MWEKc3Eo4'),
(9, 'Airlift', '02 août 1990 : les troupes irakiennes envahissent le Koweït. L\'Inde vote à l\'ONU les sanctions contre l\'Irak et, prend en charge l\'évacuation de la centaine de milliers de ses ressortissants expatriés. Ainsi l’Inde aura mis en place le plus grand pont aérien et humanitaire jamais organisé au monde.', 2016, 'img/films/aircraft.jpg', 'https://www.youtube.com/embed/vb5xCMbMfZ0');

-- --------------------------------------------------------

--
-- Structure de la table `film_acteur`
--

CREATE TABLE `film_acteur` (
  `film` int(4) NOT NULL,
  `acteur` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `film_acteur`
--

INSERT INTO `film_acteur` (`film`, `acteur`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(4, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(5, 63),
(5, 64),
(5, 65),
(5, 66),
(5, 67),
(5, 68),
(5, 69),
(5, 70),
(5, 71),
(5, 72),
(5, 73),
(5, 74),
(6, 33),
(6, 34),
(6, 35),
(6, 36),
(6, 37),
(6, 38),
(6, 39),
(6, 40),
(7, 41),
(7, 42),
(7, 43),
(7, 44),
(7, 45),
(7, 46),
(7, 47),
(7, 48),
(8, 49),
(8, 50),
(8, 51),
(8, 52),
(8, 53),
(8, 54),
(8, 55),
(8, 56),
(9, 57),
(9, 58),
(9, 59),
(9, 60),
(9, 61),
(9, 62);

-- --------------------------------------------------------

--
-- Structure de la table `film_genre`
--

CREATE TABLE `film_genre` (
  `film` int(4) NOT NULL,
  `genre` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `film_genre`
--

INSERT INTO `film_genre` (`film`, `genre`) VALUES
(1, 1),
(1, 7),
(2, 2),
(2, 9),
(3, 1),
(3, 3),
(3, 4),
(4, 1),
(4, 10),
(5, 1),
(5, 2),
(6, 1),
(6, 6),
(7, 4),
(7, 9),
(8, 5),
(8, 7),
(8, 8),
(9, 6),
(9, 7);

-- --------------------------------------------------------

--
-- Structure de la table `film_realisateur`
--

CREATE TABLE `film_realisateur` (
  `film` int(4) NOT NULL,
  `realisateur` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `film_realisateur`
--

INSERT INTO `film_realisateur` (`film`, `realisateur`) VALUES
(1, 1),
(2, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(5, 7),
(5, 8),
(6, 9),
(7, 10),
(8, 11),
(9, 12);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(4) NOT NULL,
  `type` char(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`id`, `type`) VALUES
(1, 'Action'),
(2, 'Animation'),
(3, 'Arts Martiaux'),
(4, 'Aventure'),
(5, 'Biopic'),
(6, 'Bollywood'),
(7, 'Drame'),
(8, 'Romance'),
(9, 'Famille'),
(10, 'Science-fiction');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id` int(4) NOT NULL,
  `realisateur` char(255) NOT NULL,
  `image_realisateur` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `realisateur`
--

INSERT INTO `realisateur` (`id`, `realisateur`, `image_realisateur`) VALUES
(1, 'Steven Caple Jr', 'img/realisateur/steven.jpg'),
(2, 'Louis Clichy', 'img/realisateur/louis.jpg'),
(3, 'Alexandre', 'img/realisateur/alexandre.jpg'),
(4, 'Dwight H. Little', 'img/realisateur/dwight.jpg'),
(5, 'Roland Emmerich', 'img/realisateur/roland.jpg'),
(6, 'Bob Persichetti', 'img/realisateur/bob.jpg'),
(7, 'Petter Ramsey', 'img/realisateur/petter.jpg'),
(8, 'Rodney Rothman', 'img/realisateur/rodney.jpg'),
(9, 'Vijay Krishna Acharya', 'img/realisateur/vijay.jpg'),
(10, 'Tim Burton', 'img/realisateur/tim.jpg'),
(11, 'Andrzej Zulawski', 'img/realisateur/andrzej.jpg'),
(12, 'Raja Menon', 'img/realisateur/raja.jpg');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
