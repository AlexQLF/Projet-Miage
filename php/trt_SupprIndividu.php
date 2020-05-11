<?php
$idindi = $_POST['idindi'];
$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');

	
	$reqSupprIndi = $bdd->prepare("DELETE FROM appartenir
								WHERE id_individu = $idindi");
								
	$reqSupprIndi->execute();
	$result = $reqSupprIndi->rowCount();
	
	$reqSupprIndi2 = $bdd->prepare("DELETE FROM individu
								WHERE id_individu = $idindi");
	
	$reqSupprIndi2->execute();
	$result2 = $reqSupprIndi2->rowCount();
   
	if(($result == 1 && $result2 == 1) || $result2 == 1)
	{
		$message = "L'individu a bien été supprimer !";
		header("Location: ../index.php?messageValide=$message");
	}
	else
	{
		$message = "Error SQL!";
		header("location:../index.php?messageError=$message");
		
	}
	

?>