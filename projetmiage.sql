-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 23 Mars 2020 à 16:37
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `projetmiage`
--

-- --------------------------------------------------------

--
-- Structure de la table `annuaire`
--

CREATE TABLE IF NOT EXISTS `annuaire` (
  `id_annuaire` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_annuaire`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `annuaire`
--

INSERT INTO `annuaire` (`id_annuaire`, `libelle`) VALUES
(1, 'HARPEGE'),
(2, 'APOGEE');

-- --------------------------------------------------------

--
-- Structure de la table `appartenir`
--

CREATE TABLE IF NOT EXISTS `appartenir` (
  `id_individu` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `annee` int(11) NOT NULL,
  PRIMARY KEY (`id_individu`,`id_groupe`),
  KEY `FK_AppartenirGroupe` (`id_groupe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `appartenir`
--

INSERT INTO `appartenir` (`id_individu`, `id_groupe`, `annee`) VALUES
(4, 2, 2020),
(5, 2, 2020),
(6, 2, 2020),
(7, 2, 2020),
(8, 2, 2020),
(9, 2, 2020),
(10, 2, 2020),
(11, 2, 2020),
(12, 2, 2020),
(13, 2, 2020),
(14, 2, 2020),
(15, 2, 2020),
(16, 2, 2020),
(17, 2, 2020),
(18, 2, 2020),
(19, 2, 2020),
(20, 2, 2020),
(21, 2, 2020),
(22, 2, 2020),
(23, 2, 2020),
(24, 2, 2020),
(25, 2, 2020),
(26, 2, 2020),
(27, 2, 2020),
(28, 2, 2021),
(29, 1, 2020),
(30, 1, 2020),
(31, 1, 2020),
(32, 1, 2020),
(33, 1, 2020),
(34, 1, 2020),
(35, 1, 2020),
(36, 1, 2020),
(37, 1, 2020),
(38, 1, 2020),
(39, 1, 2020),
(40, 1, 2020),
(42, 1, 2020),
(43, 1, 2020),
(44, 1, 2020),
(45, 1, 2020),
(46, 1, 2020),
(48, 1, 2020),
(49, 1, 2020),
(50, 1, 2020),
(51, 1, 2020),
(52, 1, 2020),
(53, 1, 2020),
(54, 1, 2020),
(55, 1, 2020),
(56, 1, 2020),
(57, 1, 2020),
(58, 1, 2020),
(59, 1, 2020),
(60, 1, 2020),
(61, 1, 2020),
(62, 1, 2020),
(63, 1, 2020),
(64, 1, 2020),
(65, 1, 2020),
(66, 1, 2020),
(67, 1, 2020),
(68, 1, 2020),
(69, 1, 2020),
(70, 1, 2020),
(71, 1, 2020),
(72, 1, 2020),
(73, 1, 2020),
(74, 1, 2020),
(75, 1, 2020),
(76, 1, 2020),
(77, 1, 2020),
(78, 1, 2020),
(79, 1, 2020),
(80, 1, 2020),
(81, 1, 2020),
(82, 1, 2020),
(83, 1, 2020),
(84, 1, 2020),
(85, 1, 2020),
(86, 1, 2020),
(87, 1, 2020),
(88, 1, 2020),
(89, 1, 2020),
(90, 1, 2020),
(91, 1, 2020),
(92, 1, 2020),
(93, 1, 2020),
(94, 1, 2020),
(95, 1, 2020),
(96, 1, 2020),
(97, 1, 2020),
(98, 1, 2020),
(99, 1, 2020),
(100, 1, 2020),
(101, 1, 2020),
(102, 1, 2020),
(103, 1, 2020),
(104, 1, 2020),
(105, 1, 2020),
(106, 1, 2020),
(107, 1, 2020),
(108, 1, 2020),
(109, 1, 2020),
(110, 1, 2020),
(111, 1, 2020),
(112, 1, 2020),
(113, 1, 2020),
(114, 1, 2020),
(115, 1, 2020),
(116, 1, 2020),
(117, 1, 2020),
(118, 1, 2020),
(119, 1, 2020),
(120, 1, 2020),
(121, 1, 2020),
(122, 1, 2020),
(123, 1, 2020),
(124, 1, 2020),
(125, 1, 2020),
(126, 1, 2020),
(127, 1, 2020),
(128, 1, 2020),
(129, 1, 2020),
(130, 1, 2020),
(131, 1, 2020),
(132, 1, 2020),
(133, 1, 2020),
(134, 1, 2020);

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE IF NOT EXISTS `groupe` (
  `id_groupe` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_groupe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `groupe`
--

INSERT INTO `groupe` (`id_groupe`, `libelle`) VALUES
(1, 'L2_MIASHS'),
(2, 'L3_MIAGE_APP');

-- --------------------------------------------------------

--
-- Structure de la table `individu`
--

CREATE TABLE IF NOT EXISTS `individu` (
  `id_individu` int(11) NOT NULL AUTO_INCREMENT,
  `id_statut` int(11) NOT NULL,
  `id_annuaire` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `num` int(11) NOT NULL,
  `niveau` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_individu`),
  KEY `IndividuAnnuaire` (`id_annuaire`),
  KEY `IndividuStatut` (`id_statut`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=200 ;

--
-- Contenu de la table `individu`
--

INSERT INTO `individu` (`id_individu`, `id_statut`, `id_annuaire`, `nom`, `prenom`, `email`, `num`, `niveau`) VALUES
(4, 1, 2, 'Ait akli', 'Litissia', 'Ait akli.Litissia@parisnanterre.fr', 340002, 'L3'),
(5, 1, 2, 'Ba', 'Adja', 'Ba.Adja@parisnanterre.fr', 340003, 'L3'),
(6, 1, 2, 'Binous', 'Wassim', 'Binous.Wassim@parisnanterre.fr', 340004, 'L3'),
(7, 1, 2, 'Bocoum', 'Idy', 'Bocoum.Idy@parisnanterre.fr', 340005, 'L3'),
(8, 1, 2, 'Brochado', 'Alexandre', 'Brochado.Alexandre@parisnanterre.fr', 340006, 'L3'),
(9, 1, 2, 'Clebien', 'Nangninta', 'Clebien.Nangninta@parisnanterre.fr', 340007, 'L3'),
(10, 1, 2, 'Das', 'Rahul', 'Das.Rahul@parisnanterre.fr', 340008, 'L3'),
(11, 1, 2, 'Elarj', 'Aniss', 'Elarj.Aniss@parisnanterre.fr', 340009, 'L3'),
(12, 1, 2, 'Fall', 'Seynabou', 'Fall.Seynabou@parisnanterre.fr', 340010, 'L3'),
(13, 1, 2, 'Jestin', 'Gabriel', 'Jestin.Gabriel@parisnanterre.fr', 340011, 'L3'),
(14, 1, 2, 'Keloute ndamukong', 'Ubald', 'Keloute ndamukong.Ubald@parisnanterre.fr', 340012, 'L3'),
(15, 1, 2, 'Khalfi', 'Sofian', 'Khalfi.Sofian@parisnanterre.fr', 340013, 'L3'),
(16, 1, 2, 'Le men', 'Yann', 'Le men.Yann@parisnanterre.fr', 340014, 'L3'),
(17, 1, 2, 'Mboup', 'Gaye', 'Mboup.Gaye@parisnanterre.fr', 340015, 'L3'),
(18, 1, 2, 'Mouzouri', 'Ilhame', 'Mouzouri.Ilhame@parisnanterre.fr', 340016, 'L3'),
(19, 1, 2, 'Ndiaye', 'Moussa', 'Ndiaye.Moussa@parisnanterre.fr', 340017, 'L3'),
(20, 1, 2, 'Quellec', 'Nathan', 'Quellec.Nathan@parisnanterre.fr', 340018, 'L3'),
(21, 1, 2, 'Rajaratnam', 'Sarujan', 'Rajaratnam.Sarujan@parisnanterre.fr', 340019, 'L3'),
(22, 1, 2, 'Raypoulet', 'Hemanath', 'Raypoulet.Hemanath@parisnanterre.fr', 340020, 'L3'),
(23, 1, 2, 'Sakho', 'Assane', 'Sakho.Assane@parisnanterre.fr', 340021, 'L3'),
(24, 1, 2, 'Schauffler', 'Ophelie', 'Schauffler.Ophelie@parisnanterre.fr', 340022, 'L3'),
(25, 1, 2, 'Si-mohammed', 'Samy', 'Si-mohammed.Samy@parisnanterre.fr', 340023, 'L3'),
(26, 1, 2, 'Sidate', 'Alexis', 'Sidate.Alexis@parisnanterre.fr', 340024, 'L3'),
(27, 1, 2, 'Zemali', 'Lynda', 'Zemali.Lynda@parisnanterre.fr', 340025, 'L3'),
(28, 1, 2, 'Abalil', 'Rizlane', 'Abalil.Rizlane@parisnanterre.fr', 340026, 'L2'),
(29, 1, 2, 'Achou', 'Sara', 'Achou.Sara@parisnanterre.fr', 340027, 'L2'),
(30, 1, 2, 'Akkoura', 'Aniesse', 'Akkoura.Aniesse@parisnanterre.fr', 340028, 'L2'),
(31, 1, 2, 'Ali', 'Ikram-masjid', 'Ali.Ikram-masjid@parisnanterre.fr', 340029, 'L2'),
(32, 1, 2, 'Ali', 'Faiz', 'Ali.Faiz@parisnanterre.fr', 340030, 'L2'),
(33, 1, 2, 'Ali', 'Ikram-masjid', 'Ali.Ikram-masjid@parisnanterre.fr', 340031, 'L2'),
(34, 1, 2, 'Alouda', 'Lidao', 'Alouda.Lidao@parisnanterre.fr', 340032, 'L2'),
(35, 1, 2, 'Alouda', 'Lidao', 'Alouda.Lidao@parisnanterre.fr', 340033, 'L2'),
(36, 1, 2, 'Askar', 'Mohammad', 'Askar.Mohammad@parisnanterre.fr', 340034, 'L2'),
(37, 1, 2, 'Auger', 'Antoine', 'Auger.Antoine@parisnanterre.fr', 340035, 'L2'),
(38, 1, 2, 'Auger', 'Antoine', 'Auger.Antoine@parisnanterre.fr', 340036, 'L2'),
(39, 1, 2, 'Balde', 'Mamadou saliou', 'Balde.Mamadou saliou@parisnanterre.fr', 340037, 'L2'),
(40, 1, 2, 'Baro', 'Mohamed', 'Baro.Mohamed@parisnanterre.fr', 340038, 'L2'),
(41, 1, 2, 'Barolle', 'Romain', 'Barolle.Romain@parisnanterre.fr', 340039, 'L2'),
(42, 1, 2, 'Barolle', 'Romain', 'Barolle.Romain@parisnanterre.fr', 340040, 'L2'),
(43, 1, 2, 'Barry', 'Aissatou', 'Barry.Aissatou@parisnanterre.fr', 340041, 'L2'),
(44, 1, 2, 'Belhaimeur', 'Mohamed', 'Belhaimeur.Mohamed@parisnanterre.fr', 340042, 'L2'),
(45, 1, 2, 'Benaissa', 'Adam', 'Benaissa.Adam@parisnanterre.fr', 340043, 'L2'),
(46, 1, 2, 'Benali', 'Ahmed', 'Benali.Ahmed@parisnanterre.fr', 340044, 'L2'),
(47, 1, 2, 'Berte', 'Ulrich', 'Berte.Ulrich@parisnanterre.fr', 340045, 'L2'),
(48, 1, 2, 'Berte', 'Ulrich', 'Berte.Ulrich@parisnanterre.fr', 340046, 'L2'),
(49, 1, 2, 'Beyaz', 'Sefkan', 'Beyaz.Sefkan@parisnanterre.fr', 340047, 'L2'),
(50, 1, 2, 'Bodart', 'Valentin', 'Bodart.Valentin@parisnanterre.fr', 340048, 'L2'),
(51, 1, 2, 'Boucamus', 'Cassandra', 'Boucamus.Cassandra@parisnanterre.fr', 340049, 'L2'),
(52, 1, 2, 'Boumaza', 'Karim', 'Boumaza.Karim@parisnanterre.fr', 340050, 'L2'),
(53, 1, 2, 'Bouzekri', 'Ryan', 'Bouzekri.Ryan@parisnanterre.fr', 340051, 'L2'),
(54, 1, 2, 'Bouzekri', 'Ryan', 'Bouzekri.Ryan@parisnanterre.fr', 340052, 'L2'),
(55, 1, 2, 'Callet', 'Theo', 'Callet.Theo@parisnanterre.fr', 340053, 'L2'),
(56, 1, 2, 'Callet', 'Theo', 'Callet.Theo@parisnanterre.fr', 340054, 'L2'),
(57, 1, 2, 'Cazenave', 'Louis', 'Cazenave.Louis@parisnanterre.fr', 340055, 'L2'),
(58, 1, 2, 'Chatillon', 'Julien', 'Chatillon.Julien@parisnanterre.fr', 340056, 'L2'),
(59, 1, 2, 'Chatillon', 'Julien', 'Chatillon.Julien@parisnanterre.fr', 340057, 'L2'),
(60, 1, 2, 'Chen', 'Juline', 'Chen.Juline@parisnanterre.fr', 340058, 'L2'),
(61, 1, 2, 'Chen', 'Juline', 'Chen.Juline@parisnanterre.fr', 340059, 'L2'),
(62, 1, 2, 'Crentsil', 'Robert', 'Crentsil.Robert@parisnanterre.fr', 340060, 'L2'),
(63, 1, 2, 'Crentsil', 'Robert', 'Crentsil.Robert@parisnanterre.fr', 340061, 'L2'),
(64, 1, 2, 'Dandeu', 'Tom', 'Dandeu.Tom@parisnanterre.fr', 340062, 'L2'),
(65, 1, 2, 'Dandeu', 'Tom', 'Dandeu.Tom@parisnanterre.fr', 340063, 'L2'),
(66, 1, 2, 'Delaporte', 'Lucie', 'Delaporte.Lucie@parisnanterre.fr', 340064, 'L2'),
(67, 1, 2, 'Delaporte', 'Lucie', 'Delaporte.Lucie@parisnanterre.fr', 340065, 'L2'),
(68, 1, 2, 'Diop', 'Maguette', 'Diop.Maguette@parisnanterre.fr', 340066, 'L2'),
(69, 1, 2, 'Djamaldine ben', 'Hadji', 'Djamaldine ben.Hadji@parisnanterre.fr', 340067, 'L2'),
(70, 1, 2, 'Dubois', 'Dorian', 'Dubois.Dorian@parisnanterre.fr', 340068, 'L2'),
(71, 1, 2, 'El amrani', 'Amine', 'El amrani.Amine@parisnanterre.fr', 340069, 'L2'),
(72, 1, 2, 'Esmel', 'Nome', 'Esmel.Nome@parisnanterre.fr', 340070, 'L2'),
(73, 1, 2, 'Fahim', 'Aymane', 'Fahim.Aymane@parisnanterre.fr', 340071, 'L2'),
(74, 1, 2, 'Fekih', 'Kevin', 'Fekih.Kevin@parisnanterre.fr', 340072, 'L2'),
(75, 1, 2, 'Feugier', 'Augustin', 'Feugier.Augustin@parisnanterre.fr', 340073, 'L2'),
(76, 1, 2, 'Gac', 'Kevin', 'Gac.Kevin@parisnanterre.fr', 340074, 'L2'),
(77, 1, 2, 'Ganeshn', 'Haresh', 'Ganeshn.Haresh@parisnanterre.fr', 340075, 'L2'),
(78, 1, 2, 'Gavalda', 'Clement', 'Gavalda.Clement@parisnanterre.fr', 340076, 'L2'),
(79, 1, 2, 'Gilbert', 'Cyprien', 'Gilbert.Cyprien@parisnanterre.fr', 340077, 'L2'),
(80, 1, 2, 'Gilbert', 'Cyprien', 'Gilbert.Cyprien@parisnanterre.fr', 340078, 'L2'),
(81, 1, 2, 'Gorlicki', 'Paul', 'Gorlicki.Paul@parisnanterre.fr', 340079, 'L2'),
(82, 1, 2, 'Goyet', 'Camille', 'Goyet.Camille@parisnanterre.fr', 340080, 'L2'),
(83, 1, 2, 'Goyet', 'Camille', 'Goyet.Camille@parisnanterre.fr', 340081, 'L2'),
(84, 1, 2, 'Grandelaude', 'Mathias', 'Grandelaude.Mathias@parisnanterre.fr', 340082, 'L2'),
(85, 1, 2, 'Hadjara', 'Celina', 'Hadjara.Celina@parisnanterre.fr', 340083, 'L2'),
(86, 1, 2, 'Houhou', 'Sara', 'Houhou.Sara@parisnanterre.fr', 340084, 'L2'),
(87, 1, 2, 'Igoudjilene', 'Kenza', 'Igoudjilene.Kenza@parisnanterre.fr', 340085, 'L2'),
(88, 1, 2, 'Jalloh', 'Yusuf', 'Jalloh.Yusuf@parisnanterre.fr', 340086, 'L2'),
(89, 1, 2, 'Jardin', 'Samy', 'Jardin.Samy@parisnanterre.fr', 340087, 'L2'),
(90, 1, 2, 'Jardin', 'Samy', 'Jardin.Samy@parisnanterre.fr', 340088, 'L2'),
(91, 1, 2, 'Jules', 'Julissa', 'Jules.Julissa@parisnanterre.fr', 340089, 'L2'),
(92, 1, 2, 'Kadi', 'Imane', 'Kadi.Imane@parisnanterre.fr', 340090, 'L2'),
(93, 1, 2, 'Kadri', 'Nassim', 'Kadri.Nassim@parisnanterre.fr', 340091, 'L2'),
(94, 1, 2, 'Kende', 'Emmanuela', 'Kende.Emmanuela@parisnanterre.fr', 340092, 'L2'),
(95, 1, 2, 'Kouhafa', 'Latifa', 'Kouhafa.Latifa@parisnanterre.fr', 340093, 'L2'),
(96, 1, 2, 'Lacom', 'Marveen', 'Lacom.Marveen@parisnanterre.fr', 340094, 'L2'),
(97, 1, 2, 'Le', 'Phong sac', 'Le.Phong sac@parisnanterre.fr', 340095, 'L2'),
(98, 1, 2, 'Le lorier', 'Lucas', 'Le lorier.Lucas@parisnanterre.fr', 340096, 'L2'),
(99, 1, 2, 'Legendre', 'Angele', 'Legendre.Angele@parisnanterre.fr', 340097, 'L2'),
(100, 1, 2, 'Lemaza kunday ndjuka', 'Revelle', 'Lemaza kunday ndjuka.Revelle@parisnanterre.fr', 340098, 'L2'),
(101, 1, 2, 'Limbasse', 'Noemie', 'Limbasse.Noemie@parisnanterre.fr', 340099, 'L2'),
(102, 1, 2, 'Limbasse', 'Noemie', 'Limbasse.Noemie@parisnanterre.fr', 340100, 'L2'),
(103, 1, 2, 'Lin', 'Xinlei', 'Lin.Xinlei@parisnanterre.fr', 340101, 'L2'),
(104, 1, 2, 'Louveau', 'Christophe', 'Louveau.Christophe@parisnanterre.fr', 340102, 'L2'),
(105, 1, 2, 'Malinvaud', 'Paul', 'Malinvaud.Paul@parisnanterre.fr', 340103, 'L2'),
(106, 1, 2, 'Martin', 'Vanessa', 'Martin.Vanessa@parisnanterre.fr', 340104, 'L2'),
(107, 1, 2, 'Medaoud', 'Salim', 'Medaoud.Salim@parisnanterre.fr', 340105, 'L2'),
(108, 1, 2, 'Mousset', 'Pierre', 'Mousset.Pierre@parisnanterre.fr', 340106, 'L2'),
(109, 1, 2, 'Mousset', 'Pierre', 'Mousset.Pierre@parisnanterre.fr', 340107, 'L2'),
(110, 1, 2, 'Nanquette', 'Olivier', 'Nanquette.Olivier@parisnanterre.fr', 340108, 'L2'),
(111, 1, 2, 'Nanquette', 'Olivier', 'Nanquette.Olivier@parisnanterre.fr', 340109, 'L2'),
(112, 1, 2, 'Nass', 'Julien', 'Nass.Julien@parisnanterre.fr', 340110, 'L2'),
(113, 1, 2, 'Nass', 'Julien', 'Nass.Julien@parisnanterre.fr', 340111, 'L2'),
(114, 1, 2, 'Noursaid', 'Lahcen', 'Noursaid.Lahcen@parisnanterre.fr', 340112, 'L2'),
(115, 1, 2, 'Oumbe oumbe', 'David', 'Oumbe oumbe.David@parisnanterre.fr', 340113, 'L2'),
(116, 1, 2, 'Pires', 'Dany', 'Pires.Dany@parisnanterre.fr', 340114, 'L2'),
(117, 1, 2, 'Pires', 'Dany', 'Pires.Dany@parisnanterre.fr', 340115, 'L2'),
(118, 1, 2, 'Quenum', 'Heloise', 'Quenum.Heloise@parisnanterre.fr', 340116, 'L2'),
(119, 1, 2, 'Quenum', 'Heloise', 'Quenum.Heloise@parisnanterre.fr', 340117, 'L2'),
(120, 1, 2, 'Rageh', 'Nydel', 'Rageh.Nydel@parisnanterre.fr', 340118, 'L2'),
(121, 1, 2, 'Rageh', 'Nydel', 'Rageh.Nydel@parisnanterre.fr', 340119, 'L2'),
(122, 1, 2, 'Ripert', 'Alexandre', 'Ripert.Alexandre@parisnanterre.fr', 340120, 'L2'),
(123, 1, 2, 'Sadat', 'Halima', 'Sadat.Halima@parisnanterre.fr', 340121, 'L2'),
(124, 1, 2, 'Sardaoui', 'Amine', 'Sardaoui.Amine@parisnanterre.fr', 340122, 'L2'),
(125, 1, 2, 'Sereir', 'Zohra', 'Sereir.Zohra@parisnanterre.fr', 340123, 'L2'),
(126, 1, 2, 'Sharma', 'Aurelien', 'Sharma.Aurelien@parisnanterre.fr', 340124, 'L2'),
(127, 1, 2, 'Sintes', 'Manon', 'Sintes.Manon@parisnanterre.fr', 340125, 'L2'),
(128, 1, 2, 'Smahi', 'Lydia', 'Smahi.Lydia@parisnanterre.fr', 340126, 'L2'),
(129, 1, 2, 'Soleil', 'Emilie', 'Soleil.Emilie@parisnanterre.fr', 340127, 'L2'),
(130, 1, 2, 'Soumare', 'Fatimata', 'Soumare.Fatimata@parisnanterre.fr', 340128, 'L2'),
(131, 1, 2, 'Sun', 'Jialei', 'Sun.Jialei@parisnanterre.fr', 340129, 'L2'),
(132, 1, 2, 'Tahir', 'Mohamed - imrane', 'Tahir.Mohamed - imrane@parisnanterre.fr', 340130, 'L2'),
(133, 1, 2, 'Tissot', 'Guilhem', 'Tissot.Guilhem@parisnanterre.fr', 340131, 'L2'),
(134, 1, 2, 'Tliba', 'Ahmed', 'Tliba.Ahmed@parisnanterre.fr', 340132, 'L2'),
(135, 2, 1, 'LE ROUX', 'Annaig', 'LE ROUX.Annaig@parisnanterre.fr', 34100, ''),
(136, 2, 1, 'Bouchakhchoukha', 'Adel', 'Bouchakhchoukha.Adel@parisnanterre.fr', 34101, ''),
(137, 2, 1, 'BELLINI', 'Béatrice', 'BELLINI.Béatrice@parisnanterre.fr', 34102, ''),
(138, 2, 1, 'Hardouin Ceccantini', 'Cécile', 'Hardouin Ceccantini.Cécile@parisnanterre.fr', 34103, ''),
(139, 2, 1, 'Mesnager', 'Laurent', 'Mesnager.Laurent@parisnanterre.fr', 34104, ''),
(140, 2, 1, 'Le Cun', 'Bertrand', 'Le Cun.Bertrand@parisnanterre.fr', 34105, ''),
(141, 2, 1, 'Hanen', 'Claire', 'Hanen.Claire@parisnanterre.fr', 34106, ''),
(142, 2, 1, 'Guyon', 'Thomas', 'Guyon.Thomas@parisnanterre.fr', 34107, ''),
(143, 2, 1, 'Ben Hamida Mrabet', 'Sana', 'Ben Hamida Mrabet.Sana@parisnanterre.fr', 34108, ''),
(144, 2, 1, 'Ikken', 'Sonia', 'Ikken.Sonia@parisnanterre.fr', 34109, ''),
(145, 2, 1, 'Gervais', 'Marie-Pierre', 'Gervais.Marie-Pierre@parisnanterre.fr', 34110, ''),
(146, 2, 1, 'Duvernet', 'Laurent', 'Duvernet.Laurent@parisnanterre.fr', 34111, ''),
(147, 2, 1, 'Castillo_', 'Alberto', 'Castillo_.Alberto@parisnanterre.fr', 34112, ''),
(148, 2, 1, 'Baarir', 'Souheib', 'Baarir.Souheib@parisnanterre.fr', 34113, ''),
(149, 2, 1, 'Delbot', 'François', 'Delbot.François@parisnanterre.fr', 34114, ''),
(150, 2, 1, 'Azhar-Arnal', 'Juliette', 'Azhar-Arnal.Juliette@parisnanterre.fr', 34115, ''),
(151, 2, 1, 'Rukoz-Castillo', 'Marta', 'Rukoz-Castillo.Marta@parisnanterre.fr', 34116, ''),
(152, 2, 1, 'Legond-Aubry', 'Fabrice', 'Legond-Aubry.Fabrice@parisnanterre.fr', 34117, ''),
(153, 2, 1, 'Quinio', 'Bernard', 'Quinio.Bernard@parisnanterre.fr', 34118, ''),
(154, 2, 1, 'Pradat-Peyre', 'Jean-François', 'Pradat-Peyre.Jean-François@parisnanterre.fr', 34119, ''),
(155, 2, 1, 'Ameur', 'Yannick', 'Ameur.Yannick@parisnanterre.fr', 34120, ''),
(156, 2, 1, 'Décallonne', 'Marc', 'Décallonne.Marc@parisnanterre.fr', 34121, ''),
(157, 2, 1, 'Dubois', 'Aloîs', 'Dubois.Aloîs@parisnanterre.fr', 34122, ''),
(158, 2, 1, 'Duriez', 'Nathalie', 'Duriez.Nathalie@parisnanterre.fr', 34123, ''),
(159, 2, 1, 'Florea', 'Paul', 'Florea.Paul@parisnanterre.fr', 34124, ''),
(160, 2, 1, 'Isoard', 'Thierry Michel', 'Isoard.Thierry Michel@parisnanterre.fr', 34125, ''),
(161, 2, 1, 'Latif', 'Youssef', 'Latif.Youssef@parisnanterre.fr', 34126, ''),
(162, 2, 1, 'Leloir', 'Nicole', 'Leloir.Nicole@parisnanterre.fr', 34127, ''),
(163, 2, 1, 'Novelli', 'Emmanuelle', 'Novelli.Emmanuelle@parisnanterre.fr', 34128, ''),
(164, 2, 1, 'Pujol', 'Nicolas', 'Pujol.Nicolas@parisnanterre.fr', 34129, ''),
(165, 2, 1, 'Renaud', 'Francis', 'Renaud.Francis@parisnanterre.fr', 34130, ''),
(166, 2, 1, 'Serdoun', 'Samy', 'Serdoun.Samy@parisnanterre.fr', 34131, ''),
(167, 2, 1, 'Starck', 'Monia', 'Starck.Monia@parisnanterre.fr', 34132, ''),
(168, 2, 1, 'Thomas', 'Aurélie', 'Thomas.Aurélie@parisnanterre.fr', 34133, ''),
(169, 2, 1, 'Tourvieille', 'Marc', 'Tourvieille.Marc@parisnanterre.fr', 34134, ''),
(170, 2, 1, 'Zamfirou', 'Michel', 'Zamfirou.Michel@parisnanterre.fr', 34135, ''),
(171, 2, 1, 'Zilova', 'Jana', 'Zilova.Jana@parisnanterre.fr', 34136, ''),
(172, 2, 1, 'Menouer', 'Tarek', 'Menouer.Tarek@parisnanterre.fr', 34137, ''),
(173, 2, 1, 'Rodier', 'Lise', 'Rodier.Lise@parisnanterre.fr', 34138, ''),
(174, 2, 1, 'Angarita Arocha', 'Rafael Enrique', 'Angarita Arocha.Rafael Enrique@parisnanterre.fr', 34139, ''),
(175, 2, 1, 'Ait Salaht', 'Farah', 'Ait Salaht.Farah@parisnanterre.fr', 34140, ''),
(176, 2, 1, 'Rousseau', 'Pierre', 'Rousseau.Pierre@parisnanterre.fr', 34141, ''),
(177, 2, 1, 'Medjek', 'Sarah', 'Medjek.Sarah@parisnanterre.fr', 34142, ''),
(178, 2, 1, 'Guézou', 'Xavier', 'Guézou.Xavier@parisnanterre.fr', 34143, ''),
(179, 2, 1, 'D_Alfonso', 'Giovanna', 'D_Alfonso.Giovanna@parisnanterre.fr', 34144, ''),
(180, 2, 1, 'KELLOU-MENOUER', 'Kenza', 'KELLOU-MENOUER.Kenza@parisnanterre.fr', 34145, ''),
(181, 2, 1, 'Oulhaci', 'Faiza', 'Oulhaci.Faiza@parisnanterre.fr', 34146, ''),
(182, 2, 1, 'Poizat', 'Pascal', 'Poizat.Pascal@parisnanterre.fr', 34147, ''),
(183, 2, 1, 'SADDEM', 'Rim ', 'SADDEM.Rim @parisnanterre.fr', 34148, ''),
(184, 2, 1, 'BENAMMAR', 'Nassima ', 'BENAMMAR.Nassima @parisnanterre.fr', 34149, ''),
(185, 2, 1, 'ARFAOUI', 'Khadija', 'ARFAOUI.Khadija@parisnanterre.fr', 34150, ''),
(186, 2, 1, 'Walter', 'Jean-Marc', 'Walter.Jean-Marc@parisnanterre.fr', 34151, ''),
(187, 2, 1, 'Bendraou', 'Reda', 'Bendraou.Reda@parisnanterre.fr', 34152, ''),
(188, 2, 1, 'Cojean', 'Bruno', 'Cojean.Bruno@parisnanterre.fr', 34153, ''),
(189, 2, 1, 'Abrantes', 'Pedro', 'Abrantes.Pedro@parisnanterre.fr', 34154, ''),
(190, 2, 1, 'Zouari', 'Belhassen', 'Zouari.Belhassen@parisnanterre.fr', 34155, ''),
(191, 2, 1, 'HOUHOU', 'Sara ', 'HOUHOU.Sara @parisnanterre.fr', 34156, ''),
(192, 2, 1, 'GUEHIS-SAADAOUI', 'Sonia', 'GUEHIS-SAADAOUI.Sonia@parisnanterre.fr', 34157, ''),
(193, 2, 1, 'Hillah', 'Lom Messan', 'Hillah.Lom Messan@parisnanterre.fr', 34158, ''),
(194, 2, 1, 'Hmedeh', 'Zeinab', 'Hmedeh.Zeinab@parisnanterre.fr', 34159, ''),
(195, 2, 1, 'Gherbi', 'Tahar', 'Gherbi.Tahar@parisnanterre.fr', 34160, ''),
(196, 2, 1, 'Alaoui', 'Malek', 'Alaoui.Malek@parisnanterre.fr', 34161, ''),
(197, 2, 1, 'Non defini', 'Non defini', 'Non defini.Non defini@parisnanterre.fr', 404, ''),
(198, 2, 1, 'Pierre', 'Laurent', 'Pierre.Laurent@parisnanterre.fr', 34163, ''),
(199, 2, 1, 'Hyon', 'Emmanuel', 'Hyon.Emmanuel@parisnanterre.fr', 34164, '');

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

CREATE TABLE IF NOT EXISTS `statut` (
  `id_statut` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_statut`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `statut`
--

INSERT INTO `statut` (`id_statut`, `libelle`) VALUES
(1, 'Etudiant'),
(2, 'Professeur');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD CONSTRAINT `FK_AppartenirGroupe` FOREIGN KEY (`id_groupe`) REFERENCES `groupe` (`id_groupe`),
  ADD CONSTRAINT `FK_AppartenirIndividu` FOREIGN KEY (`id_individu`) REFERENCES `individu` (`id_individu`);

--
-- Contraintes pour la table `individu`
--
ALTER TABLE `individu`
  ADD CONSTRAINT `FK_IndividuStatut` FOREIGN KEY (`id_statut`) REFERENCES `statut` (`id_statut`),
  ADD CONSTRAINT `IndividuAnnuaire` FOREIGN KEY (`id_annuaire`) REFERENCES `annuaire` (`id_annuaire`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
