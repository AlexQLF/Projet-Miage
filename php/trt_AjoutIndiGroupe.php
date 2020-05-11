<?php

$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');

$idgrp = $_POST['idgrp'];
$idindi = $_POST['idindi'];
$annee = $_POST['annee'];

foreach($idindi as $selectValue){
    $reqAjoutIndiGroupe = $bdd->prepare("INSERT INTO appartenir
        VALUES ($selectValue,$idgrp,$annee)");
                            
    $reqAjoutIndiGroupe->execute();
}

$result = $reqAjoutIndiGroupe->rowCount();

if($result == 1)
{
	$message = "L'individu a bien été ajouté au groupe !";
	header("Location: ../index.php?messageValide=$message");
}
else
{
	$message = "Error SQL!";
	header("location:../index.php?messageError=$message");
	
}




?>