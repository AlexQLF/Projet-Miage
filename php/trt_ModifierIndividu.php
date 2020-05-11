<?php

$modifind = $_POST['modifind'];

$type = $_POST['type'];
$annuaire = $_POST['annuaire'];
$nom = $_POST['nom'];
$prenom = $_POST['prenom'];
$email = $_POST['email'];
$num = $_POST['num'];
$niveau = $_POST['niveau'];


$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');

	
	$reqVerifInd = $bdd->prepare("SELECT * FROM individu
								WHERE id_individu = $modifind");
								
	$reqVerifInd->execute();
	$result = $reqVerifInd->rowCount();

	if($result == 1)
	{
		$reqModifInd = $bdd->prepare("UPDATE individu SET id_statut = '" . $type . "', id_annuaire = '" . $annuaire ."', nom = '" . $nom . "', prenom = '" . $prenom ."', email = '" . $email . "', num = '" . $num . "', niveau = '" . $niveau ."' WHERE id_individu = '" . $modifind . "'");
		$reqModifInd->execute();
		$result2 = $reqModifInd->rowCount();

		if($result2 == 1){
			$message = "Individu modifié !";
			header("location:../index.php?messageValide=$message");
		}
		
	}
	else{
		$message = "Error SQL!";
		header("location:../index.php?messageError=$message");
	}
	
	

?>