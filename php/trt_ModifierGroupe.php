<?php
$modifgrp = $_POST['modifgrp'];//id du grp
$libellegrp = $_POST['libellegrp']; //nouveau lib du grp

$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');


$reqInsert = $bdd->prepare("UPDATE groupe SET libelle = '".$libellegrp."' WHERE id_groupe = '".$modifgrp."'");
$reqInsert->execute();
$result2 = $reqInsert->rowCount();

	$message = "Le groupe a été mis à jour !";
	header("location:../index.php?messageValide=$message");


 
?>