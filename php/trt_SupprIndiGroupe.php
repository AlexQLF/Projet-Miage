<?php

$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');

$idgrp = $_POST['idgrp'];	
$idindi = $_POST['idindi'];

foreach($idindi as $selectValue){
    $reqSupprGroupe = $bdd->prepare("DELETE FROM appartenir
                            WHERE id_individu = $selectValue
                            AND id_groupe = $idgrp");
                            
    $reqSupprGroupe->execute();
}

$result2 = $reqSupprGroupe->rowCount();

if($result2 == 1)
{
	$message = "L'individu a bien été supprimer du groupe !";
	header("Location: ../index.php?messageValide=$message");
}
else
{
	$message = "Error SQL!";
	header("location: ../index.php?messageError=$message");
	
}

?>