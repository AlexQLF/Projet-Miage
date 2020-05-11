<?php
$nomGroupe = $_POST['libgrp'];
$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');

$reqVerif = $bdd->prepare("SELECT * FROM groupe where libelle = '".$nomGroupe."'");
$reqVerif->execute();
$result = $reqVerif->rowCount();

if($result == 0){
	
	$message = "Error : Ce groupe n'existe pas !";
	header("location:../index.php?messageError=$message");
	
}else{
	
	$result = $reqVerif->fetchAll(PDO::FETCH_COLUMN, 0);
	
	$reqSupprGroupe = $bdd->prepare("DELETE FROM appartenir
								WHERE id_groupe = ".$result[0]);
								
	$reqSupprGroupe->execute();
	$result2 = $reqSupprGroupe->rowCount();
	
	$reqSupprGroupe2 = $bdd->prepare("DELETE FROM groupe
								WHERE id_groupe = ".$result[0]);
	
	$reqSupprGroupe2->execute();
	$result3 = $reqSupprGroupe2->rowCount();
   
	if(($result2 == 1 && $result3 == 1) || $result3 == 1)
	{
		$message = "Le groupe ".$nomGroupe." a bien été supprimer !";
		header("Location: ../index.php?messageValide=$message");
	}
	else
	{
		$message = "Error SQL!";
		header("location:../index.php?messageError=$message");
		
	}
	
}
?>