-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  lun. 18 mars 2019 à 20:00
-- Version du serveur :  5.6.41-84.1
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dealhait_base247labs`
--

-- --------------------------------------------------------

--
-- Structure de la table `bilan`
--

CREATE TABLE `bilan` (
  `id_bilan` int(7) NOT NULL,
  `nom_compte` varchar(100) CHARACTER SET utf8 NOT NULL,
  `no_compte` int(7) NOT NULL,
  `type_compte` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type_affectation` varchar(50) CHARACTER SET utf8 NOT NULL,
  `don` varchar(5) NOT NULL,
  `achat` char(20) NOT NULL,
  `description` varchar(450) NOT NULL,
  `montant` decimal(15,2) NOT NULL,
  `fichier` varchar(200) NOT NULL,
  `actions` int(3) NOT NULL,
  `nb_actionnaires` int(3) NOT NULL,
  `taux` char(6) NOT NULL,
  `duree` int(3) NOT NULL,
  `encaissement` char(4) NOT NULL,
  `jour_bilan` int(2) NOT NULL,
  `mois_bilan` varchar(20) NOT NULL,
  `annee_bilan` int(4) NOT NULL,
  `date_bilan_num` int(6) NOT NULL,
  `agent` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bilan`
--

INSERT INTO `bilan` (`id_bilan`, `nom_compte`, `no_compte`, `type_compte`, `type_affectation`, `don`, `achat`, `description`, `montant`, `fichier`, `actions`, `nb_actionnaires`, `taux`, `duree`, `encaissement`, `jour_bilan`, `mois_bilan`, `annee_bilan`, `date_bilan_num`, `agent`) VALUES
(26, 'TCA à payer', 72, 'Passif à court terme', 'Crédit', '', '', 'TCA relative à la facture # 3', '0.00', 'ventes_facture_3.pdf', 0, 0, '', 0, '', 11, 'décembre', 2018, 201812, 'Administrateur'),
(25, 'Encaisse', 1, 'Actif à court terme', 'Débit', '', '', 'Encaissement relatif à la facture # 3', '173930.00', 'ventes_facture_3.pdf', 0, 0, '', 0, '', 11, 'décembre', 2018, 201812, 'Administrateur'),
(23, 'TCA à payer', 72, 'Passif à court terme', 'Crédit', '', '', 'TCA relative à la facture # 2', '1660.00', 'ventes_facture_2.pdf', 0, 0, '', 0, '', 27, 'novembre', 2018, 201811, 'Administrateur'),
(24, 'Clients', 7, 'Actif à court terme', 'Débit', '', '', 'Dette du client Rapide Vite S.A relative à la facture # 2', '8000.00', 'facture_2.pdf', 0, 0, '', 0, '', 27, 'novembre', 2018, 201811, 'Administrateur'),
(22, 'Encaisse', 1, 'Actif à court terme', 'Débit', '', '', 'Encaissement relatif à la facture # 2', '10260.00', 'ventes_facture_2.pdf', 0, 0, '', 0, '', 27, 'novembre', 2018, 201811, 'Administrateur'),
(21, 'Encaisse', 1, 'Actif à court terme', 'Crédit', '', 'au comptant', 'Paiement de dettes - Compte: Charges à payer', '-4000.00', 'Template_Recu_Paiement_Dettes_201812.jpg', 0, 0, '', 0, '', 29, 'décembre', 2018, 201812, 'Administrateur'),
(20, 'Charges à payer', 54, 'Passif à court terme', 'Débit', ' ', 'au comptant', 'Paiement de dettes', '-4000.00', 'Template_Recu_Paiement_Dettes_201812.jpg', 0, 0, '', 0, '', 29, 'décembre', 2018, 201812, 'Administrateur'),
(19, 'TCA à payer', 72, 'Passif à court terme', 'Crédit', '', '', 'TCA relative à la facture # 1', '13550.00', 'ventes_facture_1.pdf', 0, 0, '', 0, '', 20, 'décembre', 2018, 201812, 'Administrateur'),
(18, 'Encaisse', 1, 'Actif à court terme', 'Débit', '', '', 'Encaissement relatif à la facture # 1', '149050.00', 'ventes_facture_1.pdf', 0, 0, '', 0, '', 20, 'décembre', 2018, 201812, 'Administrateur'),
(17, 'Encaisse', 1, 'Actif à court terme', 'Crédit', '', 'à crédit', 'Achat d’équipements de bureau', '-52000.00', 'Template_Recu_Equipements_Bureau.jpg', 0, 0, '', 0, '', 8, 'décembre', 2018, 201812, 'Administrateur'),
(16, 'Equipements de bureau', 9, 'Actif à court terme', 'Débit', '', 'à crédit', 'Achat d’équipements de bureau', '52000.00', 'Template_Recu_Equipements_Bureau.jpg', 0, 0, '', 0, '', 8, 'décembre', 2018, 201812, 'Administrateur'),
(15, 'Encaisse', 1, 'Actif à court terme', 'Crédit', '', 'au comptant', 'Développement du site web de l’entreprise', '-149400.00', 'Template_Recu_Paiement_Site.jpg', 0, 0, '', 0, 'Oui', 26, 'novembre', 2018, 201811, 'Administrateur'),
(14, 'Site web', 71, 'Actif à long terme', 'Débit', '', 'au comptant', 'Développement du site web de l’entreprise', '149400.00', 'Template_Recu_Paiement_Site.jpg', 0, 0, '', 0, 'Oui', 26, 'novembre', 2018, 201811, 'Administrateur'),
(13, 'Charges à payer', 54, 'Passif à court terme', 'Crédit', '', '', 'Achat de fournitures de bureau / Bénéficiaire: EKO Plus', '3850.00', 'Template_Recu_Livraison_Fournitures.jpg', 0, 0, '', 0, '', 24, 'novembre', 2018, 201811, 'Administrateur'),
(12, 'Charges à payer', 54, 'Passif à court terme', 'Crédit', '', '', 'Impression d’affiches publicitaires / Bénéficiaire: Print VIP Enterprise', '3000.00', 'Template_Recu_Impression.jpg', 0, 0, '', 0, '', 11, 'novembre', 2018, 201811, 'Administrateur'),
(11, 'Encaisse', 1, 'Actif à court terme', 'Crédit', '', '', 'Paiement partiel pour Impressions et copies / Bénéficiaire: Print VIP Enterprise', '-4000.00', 'Template_Recu_Impression.jpg', 0, 0, '', 0, '', 11, 'novembre', 2018, 201811, 'Administrateur'),
(10, 'Encaisse', 1, 'Actif à court terme', 'Crédit', '', '', 'D&eacute;caissement - Frais de carburant de véhicule pour le mois d’octobre 2018 (Stations d\'essence diverses)', '-8000.00', 'Template_Fiches_Gaz.jpg', 0, 0, '', 0, '', 29, 'octobre', 2018, 201810, 'Administrateur'),
(9, 'Encaisse', 1, 'Actif à court terme', 'Crédit', '', '', 'D&eacute;caissement - Utilisation des services de Pascal REMY, spécialiste en aménagement intérieur (Pascal REMY)', '-45000.00', 'Template_Recu_Amenagement_Pascal.jpg', 0, 0, '', 0, '', 18, 'octobre', 2018, 201810, 'Administrateur'),
(8, 'Encaisse', 1, 'Actif à court terme', 'Crédit', '', 'au comptant', 'Paiement  du loyer pour la période allant du 10 octobre 2018 au 9 octobre 2019', '-224100.00', 'Template_Recu_Loyer.jpg', 0, 0, '', 0, '', 10, 'octobre', 2018, 201810, 'Wilfrid'),
(7, 'Loyer payé d’avance', 29, 'Actif à court terme', 'Débit', '', 'au comptant', 'Paiement  du loyer pour la période allant du 10 octobre 2018 au 9 octobre 2019', '224100.00', 'Template_Recu_Loyer.jpg', 0, 0, '', 0, '', 10, 'octobre', 2018, 201810, 'Wilfrid'),
(6, 'Jessica Anne PIGNON - Capital', 4, 'Avoir des propriétaires', 'Crédit', '', '', 'Investissement initial de Jessica Anne PIGNON', '203350.00', 'Template_Recu_Investissement_Jessica.jpg', 35, 3, '', 0, '', 2, 'octobre', 2018, 201810, 'Administrateur'),
(5, 'Encaisse', 1, 'Actif à court terme', 'Débit', '', '', 'Investissement initial de Jessica Anne PIGNON', '203350.00', 'Template_Recu_Investissement_Jessica.jpg', 0, 0, '', 0, '', 2, 'octobre', 2018, 201810, 'Administrateur'),
(4, 'Roberto LEROY - Capital', 3, 'Avoir des propriétaires', 'Crédit', '', '', 'Investissement initial de Roberto LEROY', '145250.00', 'Template_Recu_Investissement_Roberto.jpg', 25, 3, '', 0, '', 2, 'octobre', 2018, 201810, 'Administrateur'),
(3, 'Encaisse', 1, 'Actif à court terme', 'Débit', '', '', 'Investissement initial de Roberto LEROY', '145250.00', 'Template_Recu_Investissement_Roberto.jpg', 0, 0, '', 0, '', 2, 'octobre', 2018, 201810, 'Administrateur'),
(1, 'Patrick LEWIS - Capital', 10, 'Avoir des propriétaires', 'Crédit', '', '', 'Investissement initial de Patrick LEWIS', '232400.00', 'Template_Recu_Investissement_Patrick.jpg', 40, 3, '', 0, '', 2, 'octobre', 2018, 201810, 'Administrateur'),
(2, 'Encaisse', 1, 'Actif à court terme', 'Débit', '', '', 'Investissement initial de Patrick LEWIS', '232400.00', 'Template_Recu_Investissement_Patrick.jpg', 0, 0, '', 0, '', 2, 'octobre', 2018, 201810, 'Administrateur');

-- --------------------------------------------------------

--
-- Structure de la table `comptes`
--

CREATE TABLE `comptes` (
  `id_compte` int(7) NOT NULL,
  `nom_compte` varchar(180) NOT NULL,
  `type_compte` varchar(80) NOT NULL,
  `jour_compte` int(2) NOT NULL,
  `mois_compte` varchar(30) NOT NULL,
  `annee_compte` int(4) NOT NULL,
  `date_compte_num` int(6) NOT NULL,
  `agent_vente` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comptes`
--

INSERT INTO `comptes` (`id_compte`, `nom_compte`, `type_compte`, `jour_compte`, `mois_compte`, `annee_compte`, `date_compte_num`, `agent_vente`) VALUES
(47, 'Réparation et aménagement du local', 'Charges', 2, 'octobre', 2017, 201710, 'Loudgina'),
(42, 'Carburant pour véhicules', 'Charges', 2, 'octobre', 2017, 201711, 'Loudgina'),
(40, 'Charges diverses', 'Charges', 2, 'octobre', 2017, 201710, 'Loudgina'),
(38, 'Entretien de véhicules', 'Charges', 2, 'octobre', 2017, 201710, 'Loudgina'),
(37, 'Abonnement internet', 'Charges', 2, 'octobre', 2017, 201711, 'Loudgina'),
(36, 'Impressions et copies', 'Charges', 2, 'octobre', 2017, 201711, 'Loudgina'),
(30, 'Entretien du local', 'Charges', 4, 'octobre', 2017, 201710, 'willy'),
(29, 'Loyer payé d’avance', 'Actif à court terme', 5, 'octobre', 2017, 201710, 'willy'),
(6, 'Fournitures de bureau', 'Charges', 14, 'septembre', 2017, 201709, 'nazapaulo'),
(28, 'Penderies', 'Actif à long terme', 4, 'octobre', 2017, 201710, 'willy'),
(5, 'Loyer', 'Charges', 13, 'septembre', 2017, 201709, 'nazapaulo'),
(24, 'Frais de communication', 'Charges', 14, 'septembre', 2017, 201709, 'nazapaulo'),
(25, 'Electricité', 'Charges', 14, 'septembre', 2017, 201709, 'nazapaulo'),
(23, 'Transport', 'Charges', 14, 'septembre', 2017, 201709, 'nazapaulo'),
(22, 'Marketing', 'Charges', 14, 'septembre', 2017, 201709, 'nazapaulo'),
(21, 'Prélèvement - Patrick LEWIS', 'Prélèvement', 14, 'septembre', 2017, 201709, 'nazapaulo'),
(20, 'Prélèvement - Jessica Anne PIGNON', 'Prélèvement', 14, 'septembre', 2017, 201709, 'nazapaulo'),
(19, 'Prélèvement - Roberto LEROY', 'Prélèvement', 14, 'septembre', 2017, 201709, 'nazapaulo'),
(17, 'Ventes', 'Produits', 14, 'septembre', 2017, 201709, 'nazapaulo'),
(18, 'Salaires', 'Charges', 14, 'septembre', 2017, 201709, 'nazapaulo'),
(16, 'Fournisseurs', 'Passif à court terme', 26, 'juillet', 2017, 201709, 'nazapaulo'),
(10, 'Patrick LEWIS - Capital', 'Avoir des propriétaires', 3, 'août', 2017, 201708, 'nazapaulo'),
(8, 'Autres actifs', 'Actif à court terme', 2, 'août', 2017, 201708, 'loudgina'),
(9, 'Equipements de bureau', 'Actif à court terme', 5, 'août', 2017, 201708, 'loudgina'),
(7, 'Clients', 'Actif à court terme', 1, 'août', 2017, 201708, 'loudgina'),
(26, 'Coût des produits vendus', 'Charges', 2, 'octobre', 2017, 201710, 'nazapaulo'),
(27, 'Coût des services vendus', 'Charges', 2, 'octobre', 2017, 201710, 'nazapaulo'),
(4, 'Jessica Anne PIGNON - Capital', 'Avoir des propriétaires', 1, 'août', 2017, 201708, 'loudgina'),
(3, 'Roberto LEROY - Capital', 'Avoir des propriétaires', 1, 'août', 2017, 201708, 'loudgina'),
(1, 'Encaisse', 'Actif à court terme', 1, 'août', 2017, 201708, 'loudgina'),
(48, 'Eau', 'Charges', 2, 'octobre', 2017, 201711, 'Loudgina'),
(49, 'Créanciers', 'Passif à court terme', 8, 'octobre', 2017, 201710, 'Wilfrid'),
(50, 'Placements', 'Passif à court terme', 28, 'novembre', 2017, 201711, 'Wilfrid'),
(51, 'Intérêts', 'Charges', 11, 'novembre', 2017, 201711, 'Wilfrid'),
(52, 'Emballages perdus', 'Charges', 1, 'novembre', 2017, 201711, 'Wilfrid'),
(53, 'Frais de déplacement', 'Charges', 1, 'novembre', 2017, 201711, 'Wilfrid'),
(54, 'Charges à payer', 'Passif à court terme', 1, 'octobre', 2017, 201710, 'Wilfrid'),
(55, 'Frais de courtage', 'Charges', 1, 'octobre', 2017, 201710, 'Wilfrid'),
(56, 'Frais de voyages', 'Charges', 9, 'janvier', 2018, 201801, 'Wilfrid'),
(57, 'Equipements Electroniques et Accessoires (EEA)', 'Actif à court terme', 15, 'février', 2018, 201812, 'Wilfrid'),
(58, 'Vêtements et accessoires', 'Actif à court terme', 15, 'février', 2018, 201812, 'Wilfrid'),
(72, 'TCA à payer', 'Passif à court terme', 15, 'mars', 2019, 201903, 'Administrateur'),
(60, 'Réparation équipements vendus', 'Charges', 11, 'mars', 2018, 201803, 'Wilfrid'),
(61, 'Frais bancaires', 'Charges', 14, 'mars', 2018, 201803, 'Wilfrid'),
(62, 'Coût importation', 'Charges', 13, 'mars', 2018, 201803, 'Wilfrid'),
(63, 'Equipements énergétiques', 'Actif à long terme', 26, 'mars', 2018, 201803, 'Wilfrid'),
(64, 'Rendus et rabais sur ventes', 'Sous_Produits', 14, 'octobre', 2017, 201710, 'Wilfrid'),
(65, 'Escomptes sur ventes', 'Sous_Produits', 14, 'octobre', 2017, 201710, 'Wilfrid'),
(66, 'Rendus et rabais sur achats', 'Sous_Charges', 10, 'novembre', 2017, 201711, 'Wilfrid'),
(67, 'Escomptes sur achats', 'Sous_Charges', 10, 'novembre', 2017, 201711, 'Wilfrid'),
(68, 'Fret à l’achat', 'Sous_Charges', 17, 'novembre', 2017, 201711, 'Wilfrid'),
(69, 'Impôts sur le revenu', 'Charges', 12, 'mars', 2018, 201803, 'Wilfrid'),
(70, 'Frais de nourriture', 'Charges', 11, 'mai', 2018, 201805, 'Wilfrid'),
(71, 'Site web', 'Actif à long terme', 15, 'mars', 2019, 201903, 'Administrateur');

-- --------------------------------------------------------

--
-- Structure de la table `profil_entreprise`
--

CREATE TABLE `profil_entreprise` (
  `idpro` int(2) NOT NULL,
  `nom_social` varchar(100) NOT NULL,
  `nom_commercial` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `domaines` varchar(150) NOT NULL,
  `nif` varchar(30) NOT NULL,
  `logo` varchar(30) NOT NULL,
  `no_logo` char(3) NOT NULL,
  `siege_social` text NOT NULL,
  `annexes` text NOT NULL,
  `phone1` varchar(50) NOT NULL,
  `phone2` varchar(50) NOT NULL,
  `phone3` varchar(50) NOT NULL,
  `email1` varchar(60) NOT NULL,
  `email2` varchar(60) NOT NULL,
  `email3` varchar(60) NOT NULL,
  `site_web` varchar(80) NOT NULL,
  `facebook` varchar(80) NOT NULL,
  `youtube` varchar(80) NOT NULL,
  `twitter` varchar(80) NOT NULL,
  `instagram` varchar(80) NOT NULL,
  `jour` char(3) NOT NULL,
  `mois` varchar(20) NOT NULL,
  `annee` int(4) NOT NULL,
  `modification` varchar(20) NOT NULL,
  `agent` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `profil_entreprise`
--

INSERT INTO `profil_entreprise` (`idpro`, `nom_social`, `nom_commercial`, `description`, `domaines`, `nif`, `logo`, `no_logo`, `siege_social`, `annexes`, `phone1`, `phone2`, `phone3`, `email1`, `email2`, `email3`, `site_web`, `facebook`, `youtube`, `twitter`, `instagram`, `jour`, `mois`, `annee`, `modification`, `agent`) VALUES
(1, 'Electro Tech', 'Electro Tech', '« Electro Tech » est un exemple d\'entreprise commerciale et de services technologiques évoluant dans les domaines d’équipements électroniques, d\'équipements énergétiques et d\'hébergement de sites web.', '1) Commerce / 2) Service', '000-647-365-2', 'logo26.jpg', '26', '13, Puits-Blain, Pétion-ville, Haïti', '', '(509) 3769-1145', '3294-1412', '', 'wilfrid_lo@yahoo.fr', '', '', 'www.no-website.com', 'www.facebook.com/modele-profile', 'www.youtube.com/modele-profile ', 'www.twitter.com/modele-profile', 'www.instagram.com/modele-profile', '15', '03', 2019, '201903', 'Administrateur');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bilan`
--
ALTER TABLE `bilan`
  ADD PRIMARY KEY (`id_bilan`);

--
-- Index pour la table `comptes`
--
ALTER TABLE `comptes`
  ADD PRIMARY KEY (`id_compte`);

--
-- Index pour la table `profil_entreprise`
--
ALTER TABLE `profil_entreprise`
  ADD PRIMARY KEY (`idpro`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comptes`
--
ALTER TABLE `comptes`
  MODIFY `id_compte` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `profil_entreprise`
--
ALTER TABLE `profil_entreprise`
  MODIFY `idpro` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
