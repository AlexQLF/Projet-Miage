<?php
header('Content-type: application/json');
$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');

$idgrp = $_GET['idgrp'];
 
    // Fetch state data based on the specific country 
   $reqIndividu2 = $bdd->prepare("SELECT * FROM Individu i, appartenir a
								  WHERE i.id_individu = a.id_individu
								  AND id_groupe = $idgrp");
	$reqIndividu2->execute();
	$result = $reqIndividu2->fetchAll(PDO::FETCH_ASSOC);
	$json = json_encode($result);
 
    echo $json;
?>