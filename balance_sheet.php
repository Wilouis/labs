<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <title> The Balance Sheet </title>
</head>

<style>
.cover {
display:table; 
border-collapse:collapse; 
margin:15px 0; 
padding:0; 
border:0px solid #B7CAF6; 
font-size:100%;
}

tr {
display:table-row;
}

th,td  {
display: table-cell; 
color:#000000; 
margin:0; 
padding:5px; 
vertical-align:top; 
text-align:left; 
font-size:14px;
font-weight:normal; 
font-family:"Times New Roman", Times, serif;
border:0px solid #000000;
border-collapse:collapse;
}
</style>

<body>

<?php 

/*------------------------------------------------------ IMPORTANT --------------------------------------------------------------*/

/*
This is one page of the Web application of Administrative and Financial Management developed by Wilfrid LOUIS

You can access a demo version of this application from this link: "https://dealhaiti.com/pgaf" 
username: Administrateur
Password: Template=14 

You can see this Balance Sheet web page for printing or saved as PDF from this link:"https://dealhaiti.com/download/Balance_Sheet.pdf" 
----------------------------------------------------------------------------------------------------------------------------------  */



/* Include the connection's page */
include ("connect.php");


/* Standard header of the application */
require("header.php");

/* Recovery of variables */
$mois_bilan=addslashes($_POST["mois_bilan"]);
$annee_bilan=$_POST["annee_bilan"]; 

/* Identification of leap years */
$bissextile = ($annee_bilan % 4);

/* Managing the number of days per month */
if($mois_bilan=="janvier")
{
 $nbmois="01";
 $dernier_jour="31";
}

elseif($mois_bilan=="février")
{
 $nbmois="02";
 
 if($bissextile=="0")
 {
  $dernier_jour="29";
 }
 else
 {
  $dernier_jour="28";
 }
}

elseif($mois_bilan=="mars")
{
 $nbmois="03";
 $dernier_jour="31";
}

elseif($mois_bilan=="avril")
{
 $nbmois="04";
 $dernier_jour="30";
}

elseif($mois_bilan=="mai")
{
 $nbmois="05";
 $dernier_jour="31";
}

elseif($mois_bilan=="juin")
{
 $nbmois="06";
 $dernier_jour="30";
}

elseif($mois_bilan=="juillet")
{
 $nbmois="07";
 $dernier_jour="31";
}

elseif($mois_bilan=="août")
{
 $nbmois="08";
 $dernier_jour="31";
}

elseif($mois_bilan=="septembre")
{
 $nbmois="09";
 $dernier_jour="30";
}

elseif($mois_bilan=="octobre")
{
 $nbmois="10";
 $dernier_jour="31";
}

elseif($mois_bilan=="novembre")
{
 $nbmois="11";
 $dernier_jour="30";
}

else
{
 $nbmois="12";
 $dernier_jour="31";
}

/* Reference of the balance date */
$date_requete = $annee_bilan."".$nbmois;

              
echo"<br>
<p align='center' style='font-family:arial; font-size:20px;'><strong> Bilan au $dernier_jour $mois_bilan $annee_bilan
<br> (en gourdes) </strong></p>
<br>";  
  
  

/*************************** CALCULATION OF SHORT-TERM ASSETS *******************************/    
 

echo"
<p style='margin-left:100px; font-family:times new roman; font-size:16px;'>
 <table width='700' cellspacing='0' font-size='16px'>
   <tr colspan='3'>
    <td align='left'> <strong> ACTIF </strong> </td>		 
   </tr>
		 
   <tr>
	<td colspan='3' align='left'> <strong>Actif &agrave; court terme</strong> </td>		 
   </tr>";
         		 

/* Assigning a variable */
$total=0;

 
$resultat2=mysql_query("SELECT * FROM comptes WHERE type_compte='Actif à court terme'") 
            or die("Erreur dans la requete comptes");	 			 

$qte = mysql_num_rows($resultat2); 
  
while ($ligne2=mysql_fetch_array($resultat2))
{
 extract ($ligne2);	  
 $nom_compte_format = htmlspecialchars($nom_compte);
 $nom_compte_format = str_replace("?", "&rsquo;", $nom_compte_format);
	   
	       

$solution2 = mysql_query("SELECT SUM(montant) FROM bilan WHERE nom_compte='$nom_compte' AND date_bilan_num <='$date_requete'") 
            or die("Erreur dans la requete3");		 		 

 $nombre2 = mysql_num_rows($solution2);  
   
 while ($ln2=mysql_fetch_array($solution2))
 {
  extract ($ln2);
  if($ln2[0] > 0)	 	     		                 
  {
	   
 /* Display of the name and total of each short-term asset */
 echo"<tr>
 <td width='300'> $nom_compte_format </td>";			     		     
 $total_format = number_format ($ln2[0], 2, '.', ',');
 echo"<td width='200'><div style='text-align:left;'> $total_format </div></td>
 <td width='200'> &nbsp; </td>
</tr>";	
 }	    
 $total = $total + $ln2[0]; 		 	
 }
}		
   
	 	
/* Display of total short-term assets */  	  	    	  	  	 	 
echo"
<tr> 
 <td> <strong> Total actif &agrave; court terme </strong> </td>";
 
 $total_act = $total; 				 
 $total_act_format = number_format ($total_act, 2, '.', ',');
 
 echo"
 <td><div style='text-align:left; font-weight:bold;'> $total_act_format </div></td>
	 <td> &nbsp; </td>
</tr>";
		   

		   

/*************************** CALCULATION OF LONG-TERM ASSETS *******************************/

echo" 
<tr><td colspan='3'> &nbsp; </td></tr>
		 
<tr><td colspan='2' align='left'><strong> Actif &agrave; long terme </strong></td></tr>";	        		 		

/* Assigning a variable */	 
$total_alt=0;


$resultat3=mysql_query("SELECT * FROM comptes WHERE type_compte='Actif à long terme'") 
            or die("Erreur dans la requete comptes ALT");	 			 

$qte3 = mysql_num_rows($resultat3); 
  
while ($ligne3=mysql_fetch_array($resultat3))
{
 extract ($ligne3);
 $nom_compte_format2 = htmlspecialchars($nom_compte);
 $nom_compte_format2 = str_replace("?", "&rsquo;", $nom_compte_format2);	  

	     	   

 $solution10 = mysql_query("SELECT SUM(montant) FROM bilan WHERE nom_compte='$nom_compte' AND date_bilan_num <='$date_requete'") 
            or die("Erreur dans la requete ALT");				 

 $nombre10 = mysql_num_rows($solution10);  
    
 while ($ln10=mysql_fetch_array($solution10))
 {
 if($ln10[0] > 0)
 {	 	     
 $total_alt = $total_alt + $ln10[0];
		
 /* Display of the name and total of each long-term asset */
 echo"
 <tr>
  <td width='300'> $nom_compte_format2 </td>";			     		     

 $total10_format = number_format ($ln10[0], 2, '.', ',');
	
 echo"
  <td width='200'><div style='text-align:left;'> $total10_format </div></td>
  <td> &nbsp; </td>
 </tr>";	 		 	
 }
 }		 	
}	 	   	  

/* Display of total long-term assets */
echo"
<tr>
  <td> <strong> Total actif &agrave; long terme </strong> </td>"; 				 
  $total_alt_format = number_format ($total_alt, 2, '.', ',');


/* Display of total assets */
echo"
 <td width='200'><div style='text-align:left; font-weight:bold;'> $total_alt_format </div></td>
 <td> &nbsp; </td>	 
</tr>
			 
<tr><td colspan='3'> </td></tr>
		
<tr>
 <td colspan='2'><strong> TOTAL DE L'ACTIF </strong> -------------------------------------------------------------------------- </td>"; 	

 $total_actif = $total_act + $total_alt;			 
 $total_actif_format = number_format ($total_actif, 2, '.', ',');

echo"
 <td><span style='border-bottom:1px #000 solid; text-decoration:underline; font-weight:bold;'> $total_actif_format </span></td>				 
</tr>
</table>";




/*************************** CALCULATION OF SHORT-TERM LIABILITIES *******************************/

echo"<br><br>
<table width='700' cellspacing='0' font-size='16px'>
<tr><td colspan='3' align='left'><strong> PASSIF </strong> </td></tr>
		 
<tr><td colspan='2' align='left'><strong> Passif &agrave; court terme </strong> </td></tr>";


/* Assigning variables */	
$total_pct=0;
$montant_tca=0;
$avant_tca=0;
$apres_tca=0;

 
$resultat4=mysql_query("SELECT * FROM comptes WHERE type_compte='Passif à court terme'") 
            or die("Erreur dans la requete comptes PCT");	 			 

$qte4 = mysql_num_rows($resultat4); 
  
while ($ligne4=mysql_fetch_array($resultat4))
 {
  extract ($ligne4);
  $nom_compte_format3 = htmlspecialchars($nom_compte);
  $nom_compte_format3 = str_replace("?", "&rsquo;", $nom_compte_format3);
 
 
 $solution11 = mysql_query("SELECT SUM(montant) FROM bilan WHERE nom_compte='$nom_compte' AND date_bilan_num <='$date_requete'") 
            or die("Erreur dans la requete PCT");				 

 $nombre11 = mysql_num_rows($solution11);  
   
 while ($ln11=mysql_fetch_array($solution11))
 {
   if($ln11[0] > 0)
   {	 	     
   $total_pct = $total_pct + $ln11[0];
 
 
 /* Display of the name and total of each short-term liability */	
 echo"
 <tr>
  <td width='300'> $nom_compte_format3 </td>";		     		     
  $total11_format = number_format ($ln11[0], 2, '.', ',');

 echo"
  <td width='200'><div style='text-align:left;'> $total11_format </div></td>
  <td width='200'> &nbsp; </td>
 </tr>";	 		 	
   }
 }		 	
}	 	   	  

 	  
		  
/* Display of total short-term liabilities */
echo"
<tr>
 <td width='300'> <strong> Total passif &agrave; court terme </strong> </td>"; 	 
 $total_pct_format = number_format ($total_pct, 2, '.', ',');

echo"
 <td width='200'><strong><div style='text-align:left; font-weight:bold;'> $total_pct_format </div></strong></td>
 <td> &nbsp; </td>
</tr>";



/*************************** CALCULATION OF LONG-TERM LIABILITIES *******************************/

echo" 
<tr><td colspan='3'> </td></tr>
		 
<tr><td colspan='3' align='left'><strong> Passif &agrave; long terme </strong></td></tr>";	        		 		

/* Assigning variables */	
$total_plt=0;
 

$resultat5=mysql_query("SELECT * FROM comptes WHERE type_compte='Passif à long terme'") 
            or die("Erreur dans la requete comptes PLT");	 			 

$qte5 = mysql_num_rows($resultat5); 
  
 while ($ligne5=mysql_fetch_array($resultat5))
 {
  extract ($ligne5);
  $nom_compte_format4 = htmlspecialchars($nom_compte);
  $nom_compte_format4 = str_replace("?", "&rsquo;", $nom_compte_format4);
 
 
 $solution12 = mysql_query("SELECT SUM(montant) FROM bilan WHERE nom_compte='$nom_compte' AND date_bilan_num <='$date_requete'") 
            or die("Erreur dans la requete PLT");				 

 $nombre12 = mysql_num_rows($solution12);  
   
 while ($ln12=mysql_fetch_array($solution12))
 {
  if($ln12[0] > 0)
  {	 	     
  $total_plt = $total_plt + $ln12[0];
 
 
 
 /* Display of the name and total of each long-term liability */			
 echo"<tr>";

 echo"
  <td> $nom_compte_format4 </td>";	     		     
  $total12_format = number_format ($ln12[0], 2, '.', ',');

 echo"
  <td><div style='text-align:left;'> $total12_format </div></td>
  <td> &nbsp; </td>
 </tr>";	 		 	
   }
 }		 	
}	 	   	  
 	 

/* Display of total long-term liabilities */   		  		  
echo"
<tr>
 <td width='300'> <strong> Total passif &agrave; long terme </strong> </td>"; 				 
 $total_plt_format = number_format ($total_plt, 2, '.', ',');

echo"
 <td width='200'><div style='text-align:left; font-weight:bold;'> $total_plt_format </div></td>
 <td> &nbsp; </td>
</tr>
			 
<tr><td colspan='3'> </td></tr>";
	
	
/* Display of total liabilities */		 
echo"
<tr>
 <td width='300'><strong> TOTAL DU PASSIF </strong></td>"; 	
 $total_passif = $total_pct + $total_plt;			 
 $total_passif_format = number_format ($total_passif, 2, '.', ',');

echo"
 <td> &nbsp; </td>
 <td width='200'><strong> $total_passif_format </strong></td>
</tr>
</table>";
	 		
     

/*************************** CALCULATION OF THE OWNERS' EQUITY *******************************/
     
echo"<br>
<table width='700' cellspacing='0' font-size='16px'>
<tr><td colspan='3'> <strong> AVOIR DES PROPRIETAIRES </strong> </td></tr>";

/* Assigning variables */			 
$total_adp = 0;
$total_avoir=0;
$nb_actionnaires=0;


/* Deduction of total Ownership */
$total_adp = $total_actif - $total_passif;

	  

$result6=mysql_query("SELECT * FROM bilan WHERE date_bilan_num <='$date_requete' AND type_compte='Avoir des propriétaires' ORDER BY id_bilan DESC LIMIT 1") 
            or die("Erreur dans la requete AVP1");				 

$nb6 = mysql_num_rows($result6); 
  
while ($line6=mysql_fetch_array($result6))
{
 extract ($line6);		
 $no=$nb_actionnaires;
}
	 
 

$resultat6=mysql_query("SELECT * FROM bilan WHERE date_bilan_num <='$date_requete' AND type_compte='Avoir des propriétaires' ORDER BY id_bilan DESC LIMIT $no") 
            or die("Erreur dans la requete AVP2");				 

$nbligne6 = mysql_num_rows($resultat6);
  
while ($ligne6=mysql_fetch_array($resultat6))
{
 extract ($ligne6);
       
 $nom_compte_crypte4=htmlspecialchars("$nom_compte");	 
 
 
 /* Display of the name and total of capital for each owner */		 	
 echo"
 <tr>
  <td width='280'>$nom_compte_crypte4 ($actions %)</td>"; 
  $part = ($total_adp * $actions)/100;
  $part_format = number_format ($part, 2, '.', ',');

 echo"
  <td width='220'><div style='text-align:left;'>$part_format </div></td>
  <td width='200'> &nbsp; </td>
 </tr>";
}	  


/* Display of total owners' equity  */  	      
echo"
<tr>
 <td><strong> TOTAL AVOIR DES PROPRIETAIRES </strong></td>"; 				 
 $total_avoir_format = number_format ($total_adp, 2, '.', ',');

echo"
 <td> &nbsp; </td>
 <td><strong> $total_avoir_format </strong></td>				 
</tr>
			
<tr><td colspan='3'><strong> &nbsp; </strong></td></tr>
<tr>
 <td colspan='2'><strong> TOTAL DU PASSIF ET DE L'AVOIR </strong> ---------------------------------------------------- </td>"; 	
 $total_passif_avoir = $total_passif + $total_adp;			 
 $total_passif_avoir_format = number_format ($total_passif_avoir, 2, '.', ',');


/* Default signature for balance sheet */
echo"
 <td><span style='border-bottom:1px #000 solid; text-decoration:underline; font-weight:bold;'> $total_passif_avoir_format </span></td>
</tr>
			 
<tr colspan='3'>
 <td>
  <p> &nbsp; </p>
  <p> &nbsp; </p>   ________________________________ 
  <br><span style='font-weight:bold; font-size:15px;'>Vanessa LACROIX 
  <br> Comptbale </span> 
 </td>
</tr>
</table>
</p>
";		
?>	  

</body>
</html>