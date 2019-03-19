<?php
 		  
$connexion=mysql_connect ("server name","username","password")  
or die("Erreur: Connexion avec le serveur echoue");

mysql_select_db("base_247labs",$connexion)
or die ("Erreur: Selection de la base de donnee");
mysql_query("SET NAMES 'utf8'"); /* Permet d'afficher les lettres accentuees sans erreur */

?>