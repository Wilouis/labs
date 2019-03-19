<?php 

include ("connect.php");

$resultat = mysql_query("SELECT * FROM profil_entreprise") 
            or die("Erreur dans la requete");				 

  $nbligne = mysql_num_rows($resultat);
 
  
  while ($ligne=mysql_fetch_array($resultat))
    {
      extract ($ligne);
	}
	

echo "
<center>
<p style='font-size:13px;'>
 <img src='../general/fichiers/$logo' height='140' /><br>
 <strong> 
  NIF:  $nif <br>
  $siege_social<br> 
  Phones : $phone1 | $phone2 <br>
  Courriel: $email1  |  Website: $site_web
 </strong>
 
 <div style='margin-left:30px;'> <hr color='#333333' width='950' size='1'> </div>
</p>
</center>";
?>
