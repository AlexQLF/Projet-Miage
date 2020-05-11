<?php
	$idgrp = $_POST['idgrp'];
	
	$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');
			
	$reqIndividu2 = $bdd->prepare("SELECT i.id_statut, i.id_annuaire, i.nom, i.prenom, i.email, i.num, i.niveau 
									FROM Individu i, appartenir a
									WHERE i.id_individu = a.id_individu
									AND id_groupe = $idgrp");
	$reqIndividu2->execute();
	$data = $reqIndividu2->fetchAll(PDO::FETCH_ASSOC);
	$filename = 'Export des individus';
	$delimiter = ',';
	$enclosure = '"';
	
	// Tells to the browser that a file is returned, with its name : $filename.csv
	header("Content-disposition: attachment; filename=$filename.csv");
	// Tells to the browser that the content is a csv file
	header("Content-Type: text/csv");

	// I open PHP memory as a file
	$fp = fopen("php://output", 'w');

	// Insert the UTF-8 BOM in the file
	fputs($fp, $bom =( chr(0xEF) . chr(0xBB) . chr(0xBF) ));

	// I add the array keys as CSV headers
	

	// Add all the data in the file
	foreach ($data as $fields) {
		fputcsv($fp, $fields,$delimiter,$enclosure);
	}


	// Close the file
	fclose($fp);

	// Stop the script
	die();
	
	header("location:../index.php");
?>