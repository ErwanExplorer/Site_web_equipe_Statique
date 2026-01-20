-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 20 jan. 2026 à 13:21
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `esa_bd_astronomie`
--
CREATE DATABASE IF NOT EXISTS `esa_bd_astronomie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `esa_bd_astronomie`;

-- --------------------------------------------------------

--
-- Structure de la table `earth`
--

DROP TABLE IF EXISTS `earth`;
CREATE TABLE IF NOT EXISTS `earth` (
  `EAR_ID` int NOT NULL AUTO_INCREMENT,
  `EAR_Titre` varchar(38) NOT NULL,
  `EAR_Description` text NOT NULL,
  `EAR_Masse` int NOT NULL,
  `EAR_Radius` int NOT NULL,
  `EAR__orbital_period` int NOT NULL,
  `EAR_distance_from_sun` int NOT NULL,
  `EAR_has_rings` tinyint(1) NOT NULL,
  `EAR_atomosphere_composition` text NOT NULL,
  `ss_id` int NOT NULL,
  PRIMARY KEY (`EAR_ID`),
  KEY `FK_earth` (`ss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `earth`
--

INSERT INTO `earth` (`EAR_ID`, `EAR_Titre`, `EAR_Description`, `EAR_Masse`, `EAR_Radius`, `EAR__orbital_period`, `EAR_distance_from_sun`, `EAR_has_rings`, `EAR_atomosphere_composition`, `ss_id`) VALUES
(1, 'La Terre', 'Troisième planète du système solaire et seule connue pour abriter la vie. Elle possède de l\'eau liquide en surface, une atmosphère protectrice et un champ magnétique. Son satellite naturel, la Lune, stabilise son axe de rotation.', 5970, 6371, 365, 150, 0, '78% d\'azote (N2), 21% d\'oxygène (O2), 0,9% d\'argon (Ar), 0,04% de dioxyde de carbone (CO2). Traces de vapeur d\'eau, néon, hélium.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `exoplanet`
--

DROP TABLE IF EXISTS `exoplanet`;
CREATE TABLE IF NOT EXISTS `exoplanet` (
  `EXO_ID` int NOT NULL AUTO_INCREMENT,
  `EXO_Name` varchar(100) NOT NULL,
  `EXO_Description` text NOT NULL,
  `EXO_Star_system` varchar(100) DEFAULT NULL,
  `EXO_Distance_from_earth` varchar(100) DEFAULT NULL,
  `EXO_Discovery_year` int DEFAULT NULL,
  `EXO_Habitable_zone` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`EXO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `exoplanet`
--

INSERT INTO `exoplanet` (`EXO_ID`, `EXO_Name`, `EXO_Description`, `EXO_Star_system`, `EXO_Distance_from_earth`, `EXO_Discovery_year`, `EXO_Habitable_zone`) VALUES
(1, 'Proxima Centauri b', 'Exoplanète rocheuse située dans la zone habitable de Proxima Centauri, l\'étoile la plus proche du Soleil.', 'Alpha Centauri', '4,24 années-lumière', 2016, 1),
(2, 'TRAPPIST-1e', 'Exoplanète rocheuse de taille terrestre située dans la zone habitable du système TRAPPIST-1.', 'TRAPPIST-1', '39 années-lumière', 2017, 1),
(3, 'Kepler-452b', 'Surnommée \"Terre 2.0\", première exoplanète de taille terrestre découverte dans la zone habitable d\'une étoile similaire au Soleil.', 'Kepler-452', '1400 années-lumière', 2015, 1);

-- --------------------------------------------------------

--
-- Structure de la table `galaxy`
--

DROP TABLE IF EXISTS `galaxy`;
CREATE TABLE IF NOT EXISTS `galaxy` (
  `GAL_ID` int NOT NULL AUTO_INCREMENT,
  `GAL_Name` varchar(100) NOT NULL,
  `GAL_Description` text NOT NULL,
  `GAL_Type` enum('Spirale','Elliptique','Irrégulière','Lenticulaire') NOT NULL,
  `GAL_Distance_from_earth` varchar(100) DEFAULT NULL,
  `GAL_Number_of_stars` varchar(100) DEFAULT NULL,
  `GAL_Source` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GAL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `galaxy`
--

INSERT INTO `galaxy` (`GAL_ID`, `GAL_Name`, `GAL_Description`, `GAL_Type`, `GAL_Distance_from_earth`, `GAL_Number_of_stars`, `GAL_Source`) VALUES
(1, 'Voie Lactée', 'Notre galaxie, un immense ensemble d\'étoiles, de gaz, de poussières et de matière noire, maintenu par la gravitation. Elle contient environ 200 à 400 milliards d\'étoiles.', 'Spirale', '0 (nous sommes dedans)', '200-400 milliards', 'https://fr.wikipedia.org/wiki/Galaxie'),
(2, 'Andromède (M31)', 'La galaxie spirale la plus proche de la Voie lactée. Elle contient environ 1 trillion d\'étoiles et entrera en collision avec notre galaxie dans environ 4,5 milliards d\'années.', 'Spirale', '2,5 millions d\'années-lumière', '1 trillion', 'https://fr.wikipedia.org/wiki/Galaxie_d%27Androm%C3%A8de'),
(3, 'Triangulum (M33)', 'Troisième plus grande galaxie du Groupe local après Andromède et la Voie lactée.', 'Spirale', '2,7 millions d\'années-lumière', '40 milliards', 'https://fr.wikipedia.org/wiki/Galaxie_du_Triangle');

-- --------------------------------------------------------

--
-- Structure de la table `jupiter`
--

DROP TABLE IF EXISTS `jupiter`;
CREATE TABLE IF NOT EXISTS `jupiter` (
  `JUP_ID` int NOT NULL AUTO_INCREMENT,
  `JUP_Titre` varchar(38) NOT NULL,
  `JUP_Description` text NOT NULL,
  `JUP_Masse` int NOT NULL,
  `JUP_Radius` int NOT NULL,
  `JUP_orbital_period` int NOT NULL,
  `JUP_distance_from_sun` int NOT NULL,
  `JUP_has_rings` tinyint(1) NOT NULL,
  `JUP_atmosphere_composition` text NOT NULL,
  `SS_ID` int NOT NULL,
  PRIMARY KEY (`JUP_ID`),
  KEY `SS_ID` (`SS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `jupiter`
--

INSERT INTO `jupiter` (`JUP_ID`, `JUP_Titre`, `JUP_Description`, `JUP_Masse`, `JUP_Radius`, `JUP_orbital_period`, `JUP_distance_from_sun`, `JUP_has_rings`, `JUP_atmosphere_composition`, `SS_ID`) VALUES
(1, 'Jupiter', 'Plus grande planète du système solaire, une géante gazeuse qui pourrait contenir 1300 Terres. Sa Grande Tache Rouge est une tempête anticyclonique active depuis au moins 400 ans. Elle possède 95 lunes connues, dont les 4 lunes galiléennes (Io, Europe, Ganymède, Callisto). Europe pourrait abriter un océan sous-glaciaire.', 1898600, 69911, 4333, 778, 1, '89% d\'hydrogène (H2), 10% d\'hélium (He), traces d\'ammoniac, méthane, vapeur d\'eau. Pas de surface solide.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mars`
--

DROP TABLE IF EXISTS `mars`;
CREATE TABLE IF NOT EXISTS `mars` (
  `MAR_ID` int NOT NULL AUTO_INCREMENT,
  `MAR_Titre` varchar(38) NOT NULL,
  `MAR_Description` text NOT NULL,
  `MAR_Masse` int NOT NULL,
  `MAR_Radius` int NOT NULL,
  `MAR_orbital_period` int NOT NULL,
  `MAR_distance_from_sun` int NOT NULL,
  `MAR_has_rings` tinyint(1) NOT NULL,
  `MAR_atmosphere_composition` text NOT NULL,
  `SS_ID` int NOT NULL,
  PRIMARY KEY (`MAR_ID`),
  KEY `SS_ID` (`SS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `mars`
--

INSERT INTO `mars` (`MAR_ID`, `MAR_Titre`, `MAR_Description`, `MAR_Masse`, `MAR_Radius`, `MAR_orbital_period`, `MAR_distance_from_sun`, `MAR_has_rings`, `MAR_atmosphere_composition`, `SS_ID`) VALUES
(1, 'Mars', 'Quatrième planète du système solaire, appelée \"planète rouge\" en raison de l\'oxyde de fer (rouille) à sa surface. Elle possède le plus grand volcan du système solaire (Olympus Mons, 21 km de haut) et un immense canyon (Valles Marineris). Cible principale de l\'exploration spatiale pour une future colonisation.', 642, 3390, 687, 228, 0, '95,3% de dioxyde de carbone (CO2), 2,7% d\'azote (N2), 1,6% d\'argon (Ar). Atmosphère très fine (pression 100 fois inférieure à la Terre).', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mercury`
--

DROP TABLE IF EXISTS `mercury`;
CREATE TABLE IF NOT EXISTS `mercury` (
  `MER_ID` int NOT NULL AUTO_INCREMENT,
  `MER_Titre` varchar(38) NOT NULL,
  `MER_Description` text NOT NULL,
  `MER_Masse` int NOT NULL,
  `MER_radius` int NOT NULL,
  `MER_Orbital_period` int NOT NULL,
  `MER_distance_from_sun` int NOT NULL,
  `MER_has_rings` tinyint(1) NOT NULL,
  `MER_atmosphere_composition` text NOT NULL,
  `SS_ID` int NOT NULL,
  PRIMARY KEY (`MER_ID`),
  KEY `SS_ID` (`SS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `mercury`
--

INSERT INTO `mercury` (`MER_ID`, `MER_Titre`, `MER_Description`, `MER_Masse`, `MER_radius`, `MER_Orbital_period`, `MER_distance_from_sun`, `MER_has_rings`, `MER_atmosphere_composition`, `SS_ID`) VALUES
(1, 'Mercure', 'Plus petite planète du système solaire et la plus proche du Soleil. Sa surface est criblée de cratères, similaire à la Lune. Les températures varient de -180°C la nuit à 430°C le jour en raison de l\'absence d\'atmosphère significative.', 330, 2440, 88, 58, 0, 'Traces d\'oxygène, sodium, hydrogène, hélium et potassium. Atmosphère quasi inexistante (exosphère).', 1);

-- --------------------------------------------------------

--
-- Structure de la table `neptune`
--

DROP TABLE IF EXISTS `neptune`;
CREATE TABLE IF NOT EXISTS `neptune` (
  `NEP_ID` int NOT NULL AUTO_INCREMENT,
  `NEP_Titre` varchar(38) NOT NULL,
  `NEP_Description` text NOT NULL,
  `NEP_Masse` int NOT NULL,
  `NEP_Radius` int NOT NULL,
  `NEP_orbital_period` int NOT NULL,
  `NEP_distance_from_sun` int NOT NULL,
  `NEP_has_rings` tinyint(1) NOT NULL,
  `NEP_atmosphere_composition` text NOT NULL,
  `SS_ID` int NOT NULL,
  PRIMARY KEY (`NEP_ID`),
  KEY `SS_ID` (`SS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `neptune`
--

INSERT INTO `neptune` (`NEP_ID`, `NEP_Titre`, `NEP_Description`, `NEP_Masse`, `NEP_Radius`, `NEP_orbital_period`, `NEP_distance_from_sun`, `NEP_has_rings`, `NEP_atmosphere_composition`, `SS_ID`) VALUES
(1, 'Neptune', 'Huitième et dernière planète du système solaire, une géante de glace de couleur bleu intense. Elle possède les vents les plus rapides du système solaire (2100 km/h). Découverte en 1846 grâce à des calculs mathématiques avant d\'être observée. Sa lune Triton orbite dans le sens inverse et sera un jour détruite par les forces de marée.', 102430, 24622, 60190, 4495, 1, '80% d\'hydrogène (H2), 19% d\'hélium (He), 1% de méthane (CH4). Le méthane absorbe le rouge et donne la couleur bleue intense.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pluto`
--

DROP TABLE IF EXISTS `pluto`;
CREATE TABLE IF NOT EXISTS `pluto` (
  `PLU_ID` int NOT NULL AUTO_INCREMENT,
  `PLU_Titre` varchar(38) NOT NULL,
  `PLU_Description` text NOT NULL,
  `PLU_Masse` int NOT NULL,
  `PLU_Radius` int NOT NULL,
  `PLU_orbital_system` int NOT NULL,
  `PLU_distance_from_sun` int NOT NULL,
  `PLU_has_rings` tinyint(1) NOT NULL,
  `PLU_atmosphere_composition` text NOT NULL,
  PRIMARY KEY (`PLU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `pluto`
--

INSERT INTO `pluto` (`PLU_ID`, `PLU_Titre`, `PLU_Description`, `PLU_Masse`, `PLU_Radius`, `PLU_orbital_system`, `PLU_distance_from_sun`, `PLU_has_rings`, `PLU_atmosphere_composition`) VALUES
(1, 'Pluton', 'Ancienne 9ème planète, reclassifiée comme planète naine en 2006. Située dans la ceinture de Kuiper, elle possède 5 lunes dont Charon (si grande qu\'on parle de système binaire). La sonde New Horizons l\'a survolée en 2015, révélant un cœur de glace d\'azote et des montagnes de glace d\'eau.', 13, 1188, 90560, 5906, 0, 'Azote (N2), méthane (CH4), monoxyde de carbone (CO). Atmosphère très fine qui gèle quand Pluton s\'éloigne du Soleil.');

-- --------------------------------------------------------

--
-- Structure de la table `private_company`
--

DROP TABLE IF EXISTS `private_company`;
CREATE TABLE IF NOT EXISTS `private_company` (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `company_founder` varchar(100) NOT NULL,
  `company_founded_year` int NOT NULL,
  `company_headquaters` varchar(100) NOT NULL,
  `company_image` text NOT NULL,
  `company_country` varchar(100) NOT NULL,
  `company_description` text NOT NULL,
  `company_category` enum('American Company','European Company','Specialized Company','China Company','Satellite Company') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `private_company`
--

INSERT INTO `private_company` (`company_id`, `company_name`, `company_founder`, `company_founded_year`, `company_headquaters`, `company_image`, `company_country`, `company_description`, `company_category`) VALUES
(1, 'SpaceX', 'Elon Musk', 2002, 'Californie', '', 'usa', 'Activités : Lanceurs réutilisables (Falcon 9, Falcon Heavy, Starship), constellation Starlink, transport d\'astronautes vers l\'ISS\r\n\r\nChiffre d\'affaires : Plus de 4,6 milliards de dollars\r\n\r\nRéalisations : 77 lancements orbitaux entre juillet 2022 et juin 2023, leader mondial incontesté', 'American Company'),
(2, 'Blue Origin', 'Jeff Bezos', 2000, 'Kent, Washington, États-Unis', '', '', 'Activités : Tourisme spatial suborbital (New Shepard), développement du lanceur orbital New Glenn, atterrisseurs lunaires\r\n\r\nRéalisations : Premier vol réussi du New Glenn en janvier 2025, capable de transporter 50 tonnes en orbite basse', 'American Company'),
(3, 'Virgin Galactic', 'Richard Branson', 0, 'Tustin', '', 'usa', 'Activités : Tourisme spatial suborbital\r\n\r\nPrix : 450 000 dollars pour 1h30 à bord du vaisseau', 'American Company'),
(4, 'Space Pioneer', 'Yang Yiqing', 2019, 'Chine', '', 'Chine', 'Activités : Développement de lanceurs orbitaux partiellement réutilisables\r\nProjet principal : Tianlong-3, capable de placer environ 17 tonnes en orbite basse\r\nObjectif : Réduire le coût des lancements et concurrencer les grands acteurs internationaux du spatial', 'China Company'),
(5, 'LandSpace', 'Zhang Changwu', 2015, 'Chine', '', 'Chine', 'Activités : Conception et fabrication de lanceurs orbitaux\r\nProjet principal : Zhuque-3, lanceur réutilisable pouvant envoyer jusqu\'à 21 tonnes en orbite basse\r\nRéalisations : Développement du moteur à méthane TQ-12, marquant une avancée technologique majeure', 'China Company'),
(6, 'LinkSpace', 'Hu Zhenyu', 2014, 'Chine', '', 'Chine', 'Particularité : Tests de prototypes capables d\'atterrissages verticaux\r\nObjectif : S\'inspirer des technologies de réutilisation pour diminuer les coûts des lancements', 'China Company'),
(7, 'Eutelsat', 'Organisation intergouvernementale européenne', 1977, 'Paris, France', '', 'France', 'Activités : Satellites de télécommunications, diffusion TV, Internet par satellite, connectivité pour les zones rurales et isolées.\r\nChiffre d\'affaires : Environ 1,1 milliard d\'euros\r\nRéalisations : Flotte de satellites géostationnaires couvrant l\'Europe, l\'Afrique et le Moyen-Orient, partenariat avec OneWeb.', 'European Company'),
(8, 'SES (Société Européenne des Satellites)', 'Gouvernement du Luxembourg', 1985, 'Luxembourg', '', 'Luxembourg', 'Activités : Télécommunications par satellite, diffusion TV, services de données sécurisés, connectivité mondiale.\r\nChiffre d\'affaires : Environ 2 milliards d\'euros\r\nRéalisations : Constellation O3b mPOWER (orbite moyenne), couverture mondiale pour les télécommunications et Internet.', 'European Company'),
(9, 'Thales Alenia Space', 'Joint-venture Thales / Leonardo', 2005, 'Cannes, France', '', 'France/Italie', 'Activités : Conception et fabrication de satellites de télécommunications, d\'observation et scientifiques.\r\nChiffre d\'affaires : Environ 2,5 milliards d\'euros\r\nRéalisations : Satellites télécoms pour l\'ESA et opérateurs privés, participation à de nombreux programmes européens.', 'European Company'),
(10, 'Airbus Defence and Space', 'Groupe Airbus', 2014, 'Toulouse, France', '', 'Europe', 'Activités : Conception de satellites de télécommunications, d\'observation de la Terre et de systèmes spatiaux sécurisés.\r\nChiffre d\'affaires : Environ 10 milliards d\'euros (division Defence & Space)\r\nRéalisations : Satellites Eurostar, OneSat, participation aux programmes Galileo et Copernicus.', 'European Company'),
(11, 'ESO (European Southern Observatory)', 'Organisation intergouvernementale européenne', 1962, 'Garching, Allemagne', '', 'Europe', 'Activités : Conception et exploitation de télescopes astronomiques terrestres (VLT, ELT), observation de l\'Univers (étoiles, galaxies, exoplanètes), recherche astrophysique avancée.\r\nChiffre d\'affaires : Environ 160 millions d\'euros par an (budget des États membres)\r\nRéalisations : Exploitation du Very Large Telescope (VLT) au Chili, construction de l\'Extremely Large Telescope (ELT), découvertes majeures sur les trous noirs et les exoplanètes.', 'Specialized Company'),
(12, 'Intelsat', 'Organisation internationale', 1964, 'Luxembourg', '', 'International', 'Activités : Télécommunications par satellite, diffusion TV, réseaux de données pour entreprises et gouvernements.\r\nChiffre d\'affaires : Environ 2 milliards de dollars\r\nRéalisations : L\'un des plus grands opérateurs mondiaux de satellites géostationnaires avec une couverture internationale.', 'Satellite Company');

-- --------------------------------------------------------

--
-- Structure de la table `saturn`
--

DROP TABLE IF EXISTS `saturn`;
CREATE TABLE IF NOT EXISTS `saturn` (
  `SAT_ID` int NOT NULL AUTO_INCREMENT,
  `SAT_Titre` varchar(38) NOT NULL,
  `SAT_Description` text NOT NULL,
  `SAT_Masse` int NOT NULL,
  `SAT_radius` int NOT NULL,
  `SAT_orbital_period` int NOT NULL,
  `SAT_distance_from_sun` int NOT NULL,
  `SAT_has_rings` int NOT NULL,
  `SAT_atmosphere_composition` tinyint(1) NOT NULL,
  `SS_ID` int NOT NULL,
  PRIMARY KEY (`SAT_ID`),
  KEY `SS_ID` (`SS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `saturn`
--

INSERT INTO `saturn` (`SAT_ID`, `SAT_Titre`, `SAT_Description`, `SAT_Masse`, `SAT_radius`, `SAT_orbital_period`, `SAT_distance_from_sun`, `SAT_has_rings`, `SAT_atmosphere_composition`, `SS_ID`) VALUES
(1, 'Saturne', 'Sixième planète du système solaire, célèbre pour ses magnifiques anneaux composés de glace et de roches. C\'est la planète la moins dense du système solaire (elle flotterait sur l\'eau !). Elle possède 146 lunes connues, dont Titan, la seule lune avec une atmosphère dense et des lacs de méthane liquide.', 568460, 58232, 10759, 1434, 1, 96, 1);

-- --------------------------------------------------------

--
-- Structure de la table `solar_system`
--

DROP TABLE IF EXISTS `solar_system`;
CREATE TABLE IF NOT EXISTS `solar_system` (
  `SS_ID` int NOT NULL AUTO_INCREMENT,
  `SS_NAME` varchar(38) NOT NULL,
  `SS_Description` text NOT NULL,
  PRIMARY KEY (`SS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `solar_system`
--

INSERT INTO `solar_system` (`SS_ID`, `SS_NAME`, `SS_Description`) VALUES
(1, 'Système solaire', 'Le Système solaire est un ensemble astronomique composé du Soleil et de tous les objets qui gravitent autour de lui. \r\nIl comprend huit planètes (Mercure, Vénus, Terre, Mars, Jupiter, Saturne, Uranus, Neptune), \r\ndes planètes naines comme Pluton, des lunes, des astéroïdes, des comètes et d’autres petits corps. \r\nFormé il y a environ 4,6 milliards d’années, le Système solaire se trouve dans le bras d’Orion de la Voie lactée.\r\n'),
(2, 'Système d’Alpha du Centaure', 'Le système d’Alpha du Centaure est un système stellaire triple situé à environ 4,37 années-lumière de la Terre. \r\nIl est composé de trois étoiles : Alpha Centauri A et Alpha Centauri B, formant un couple binaire, \r\net Proxima Centauri, une naine rouge plus éloignée. Proxima Centauri abrite au moins une exoplanète connue, \r\nProxima b, située dans la zone habitable. Ce système est le plus proche voisin stellaire du Système solaire.\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `space_agency`
--

DROP TABLE IF EXISTS `space_agency`;
CREATE TABLE IF NOT EXISTS `space_agency` (
  `agency_id` int NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(100) NOT NULL,
  `agency_image` text NOT NULL,
  `agency_country` varchar(100) NOT NULL,
  `agency_founded_year` int NOT NULL,
  `agency_description` text NOT NULL,
  PRIMARY KEY (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `space_agency`
--

INSERT INTO `space_agency` (`agency_id`, `agency_name`, `agency_image`, `agency_country`, `agency_founded_year`, `agency_description`) VALUES
(1, 'NASA', '', 'États-Unis', 1958, 'National Aeronautics and Space Administration - Agence spatiale américaine. Missions spatiales d\'astronomie (Hubble, James Webb), observation de l\'Univers depuis l\'espace, recherche en astrophysique et cosmologie. Budget total ≈ 25 milliards de dollars.'),
(2, 'ESA', '', 'Europe', 1975, 'Agence Spatiale Européenne - Missions spatiales scientifiques (Gaia, Herschel, Euclid), cartographie de la Voie lactée, étude de l\'Univers sombre. Budget global : Environ 7 milliards d\'euros. Réalisations : Mission Gaia (cartographie de plus d\'un milliard d\'étoiles), mission Euclid pour l\'étude de l\'énergie noire.'),
(3, 'CNSA', '', 'Chine', 1993, 'China National Space Administration - Agence spatiale chinoise responsable des programmes spatiaux nationaux.'),
(4, 'Roscosmos', '', 'Russie', 1992, 'Agence spatiale fédérale russe - Responsable du programme spatial russe, héritière du programme soviétique.'),
(5, 'JAXA', '', 'Japon', 2003, 'Japan Aerospace Exploration Agency - Agence spatiale japonaise responsable de la recherche spatiale et aéronautique.');

-- --------------------------------------------------------

--
-- Structure de la table `space_mission`
--

DROP TABLE IF EXISTS `space_mission`;
CREATE TABLE IF NOT EXISTS `space_mission` (
  `mission_id` int NOT NULL AUTO_INCREMENT,
  `mission_name` varchar(100) NOT NULL,
  `mission_year` int NOT NULL,
  `mission_type` varchar(100) NOT NULL,
  `mission_description` text NOT NULL,
  `mission_image` text NOT NULL,
  `agency_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  PRIMARY KEY (`mission_id`),
  KEY `FK_Agency` (`agency_id`),
  KEY `FK_Company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sun`
--

DROP TABLE IF EXISTS `sun`;
CREATE TABLE IF NOT EXISTS `sun` (
  `SUN_id` int NOT NULL AUTO_INCREMENT,
  `SUN_Titre` varchar(38) NOT NULL,
  `SUN_Description` text NOT NULL,
  `SUN_Taille` int NOT NULL,
  `SUN_Masse` int NOT NULL,
  `SUN_Température` int NOT NULL,
  `SUN_Source` varchar(255) NOT NULL,
  `SS_ID` int NOT NULL,
  PRIMARY KEY (`SUN_id`),
  KEY `SS_ID` (`SS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `sun`
--

INSERT INTO `sun` (`SUN_id`, `SUN_Titre`, `SUN_Description`, `SUN_Taille`, `SUN_Masse`, `SUN_Température`, `SUN_Source`, `SS_ID`) VALUES
(1, 'Le Soleil', 'Étoile de type naine jaune située au centre du système solaire. C\'est la principale source d\'énergie pour la vie sur Terre.', 1400000, 2000000000, 5500, 'https://www.asc-csa.gc.ca/fra/astronomie/systeme-solaire/soleil.asp', 1),
(2, 'Le Soleil', 'Étoile de type naine jaune (G2V) située au centre du système solaire. Elle représente 99,86% de la masse totale du système solaire. C\'est la principale source d\'énergie pour la vie sur Terre grâce à la fusion nucléaire de l\'hydrogène en hélium dans son cœur.', 1392700, 1989000, 5500, 'https://www.asc-csa.gc.ca/fra/astronomie/systeme-solaire/soleil.asp', 1);

-- --------------------------------------------------------

--
-- Structure de la table `telescope`
--

DROP TABLE IF EXISTS `telescope`;
CREATE TABLE IF NOT EXISTS `telescope` (
  `TEL_ID` int NOT NULL AUTO_INCREMENT,
  `TEL_Name` varchar(100) NOT NULL,
  `TEL_Type` enum('Terrestre','Spatial','Radio') NOT NULL,
  `TEL_Description` text NOT NULL,
  `TEL_Location` varchar(255) DEFAULT NULL,
  `TEL_Diameter` varchar(50) DEFAULT NULL,
  `TEL_Launch_year` int DEFAULT NULL,
  `TEL_Source` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TEL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `telescope`
--

INSERT INTO `telescope` (`TEL_ID`, `TEL_Name`, `TEL_Type`, `TEL_Description`, `TEL_Location`, `TEL_Diameter`, `TEL_Launch_year`, `TEL_Source`) VALUES
(1, 'Very Large Telescope (VLT)', 'Terrestre', 'Ensemble de 4 télescopes de 8,2m de diamètre chacun, exploité par l\'ESO. L\'un des observatoires optiques les plus avancés au monde.', 'Cerro Paranal, Chili', '8.2m (x4)', 1998, 'https://www.stelvision.com/astro/telescopes-lunettes-astronomiques-comprendre-choisir/'),
(2, 'Extremely Large Telescope (ELT)', 'Terrestre', 'Télescope en construction par l\'ESO, sera le plus grand télescope optique au monde avec un miroir de 39m.', 'Cerro Armazones, Chili', '39m', 2028, 'https://www.stelvision.com/astro/telescopes-lunettes-astronomiques-comprendre-choisir/'),
(3, 'Hubble Space Telescope', 'Spatial', 'Télescope spatial de la NASA en orbite depuis 1990. A révolutionné notre compréhension de l\'Univers.', 'Orbite terrestre basse', '2.4m', 1990, 'https://vers-les-etoiles.com/telescope-debutant/'),
(4, 'James Webb Space Telescope', 'Spatial', 'Successeur de Hubble, lancé en 2021. Observer l\'Univers en infrarouge pour étudier les premières galaxies.', 'Point de Lagrange L2', '6.5m', 2021, 'https://vers-les-etoiles.com/telescope-debutant/');

-- --------------------------------------------------------

--
-- Structure de la table `uranus`
--

DROP TABLE IF EXISTS `uranus`;
CREATE TABLE IF NOT EXISTS `uranus` (
  `URA_ID` int NOT NULL AUTO_INCREMENT,
  `URA_Titre` varchar(38) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `URA_Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `URA_Masse` int NOT NULL,
  `URA_Radius` int NOT NULL,
  `URA_orbital_period` int NOT NULL,
  `URA_distance_from_sun` int NOT NULL,
  `URA_has_rings` tinyint(1) NOT NULL,
  `URA_atmosphere_composition` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SS_ID` int NOT NULL,
  PRIMARY KEY (`URA_ID`),
  KEY `SS_ID` (`SS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `uranus`
--

INSERT INTO `uranus` (`URA_ID`, `URA_Titre`, `URA_Description`, `URA_Masse`, `URA_Radius`, `URA_orbital_period`, `URA_distance_from_sun`, `URA_has_rings`, `URA_atmosphere_composition`, `SS_ID`) VALUES
(1, 'Uranus', 'Septième planète du système solaire, une géante de glace inclinée à 98° sur son axe (elle \"roule\" sur son orbite). Découverte en 1781 par William Herschel, c\'est la première planète découverte à l\'aide d\'un télescope. Elle possède 27 lunes connues et un système d\'anneaux fins.', 86810, 25362, 30687, 2871, 1, '83% d\'hydrogène (H2), 15% d\'hélium (He), 2% de méthane (CH4). Le méthane donne sa couleur bleu-vert caractéristique.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `venus`
--

DROP TABLE IF EXISTS `venus`;
CREATE TABLE IF NOT EXISTS `venus` (
  `VEN_ID` int NOT NULL AUTO_INCREMENT,
  `VEN_Titre` varchar(38) NOT NULL,
  `VEN_Description` text NOT NULL,
  `VEN_Masse` int NOT NULL,
  `VEN_radius` int NOT NULL,
  `VEN_orbital_period` int NOT NULL,
  `VEN_distance_from_sun` int NOT NULL,
  `VEN_has_rings` tinyint(1) NOT NULL,
  `VEN_atmosphere_composition` text NOT NULL,
  `SS_ID` int NOT NULL,
  PRIMARY KEY (`VEN_ID`),
  KEY `SS_ID` (`SS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `venus`
--

INSERT INTO `venus` (`VEN_ID`, `VEN_Titre`, `VEN_Description`, `VEN_Masse`, `VEN_radius`, `VEN_orbital_period`, `VEN_distance_from_sun`, `VEN_has_rings`, `VEN_atmosphere_composition`, `SS_ID`) VALUES
(1, 'Vénus', 'Deuxième planète du système solaire, souvent appelée \"sœur jumelle de la Terre\" en raison de sa taille similaire. C\'est la planète la plus chaude du système solaire (462°C) à cause de l\'effet de serre intense. Elle tourne dans le sens inverse des autres planètes (rotation rétrograde).', 4870, 6052, 225, 108, 0, '96,5% de dioxyde de carbone (CO2), 3,5% d\'azote (N2). Nuages d\'acide sulfurique. Pression atmosphérique 92 fois supérieure à celle de la Terre.', 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `earth`
--
ALTER TABLE `earth`
  ADD CONSTRAINT `FK_earth` FOREIGN KEY (`ss_id`) REFERENCES `solar_system` (`SS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `jupiter`
--
ALTER TABLE `jupiter`
  ADD CONSTRAINT `FK_Jupiter` FOREIGN KEY (`SS_ID`) REFERENCES `solar_system` (`SS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `mars`
--
ALTER TABLE `mars`
  ADD CONSTRAINT `FK_MARS` FOREIGN KEY (`SS_ID`) REFERENCES `solar_system` (`SS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `mercury`
--
ALTER TABLE `mercury`
  ADD CONSTRAINT `FK_Mercury` FOREIGN KEY (`SS_ID`) REFERENCES `solar_system` (`SS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `neptune`
--
ALTER TABLE `neptune`
  ADD CONSTRAINT `FK_Neptune` FOREIGN KEY (`SS_ID`) REFERENCES `solar_system` (`SS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `saturn`
--
ALTER TABLE `saturn`
  ADD CONSTRAINT `FK_Saturn` FOREIGN KEY (`SS_ID`) REFERENCES `solar_system` (`SS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `space_mission`
--
ALTER TABLE `space_mission`
  ADD CONSTRAINT `FK_Agency` FOREIGN KEY (`agency_id`) REFERENCES `space_agency` (`agency_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_Company` FOREIGN KEY (`company_id`) REFERENCES `private_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `sun`
--
ALTER TABLE `sun`
  ADD CONSTRAINT `FK_Sun` FOREIGN KEY (`SS_ID`) REFERENCES `solar_system` (`SS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `uranus`
--
ALTER TABLE `uranus`
  ADD CONSTRAINT `FK_Uranus` FOREIGN KEY (`SS_ID`) REFERENCES `solar_system` (`SS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `venus`
--
ALTER TABLE `venus`
  ADD CONSTRAINT `FK_Venus` FOREIGN KEY (`SS_ID`) REFERENCES `solar_system` (`SS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
