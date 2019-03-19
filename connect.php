<?php

/* In this file, I didn't want to use my server informations. So, you just have to import the database in your server with this same name and define the parameters below*/ 		  
$connexion=mysql_connect ("server name","username","password")  
or die("Erreur: Connexion avec le serveur echoue");

mysql_select_db("base_247labs",$connexion)
or die ("Erreur: Selection de la base de donnee");
mysql_query("SET NAMES 'utf8'"); 

?>