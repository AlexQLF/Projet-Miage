<?php
	// Connect to database
	$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');

	if (isset($_POST["import"])) {
		
		$fileName = $_FILES["file"]["tmp_name"];
		
		if ($_FILES["file"]["size"] > 0) {
			
			$file = fopen($fileName, "r");
			
			while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
				
				$reqInsert = $bdd->prepare("INSERT INTO individu VALUES ('', '".$column[0]."', '".$column[1]."', '".$column[2]."', '".$column[3]."', '".$column[4]."', '".$column[5]."', '".$column[6]."') ");
				$reqInsert->execute();
				$result = $reqInsert->rowCount();
				
					$message = "Les Données sont importées dans la base de données";
				
			}
		}
		$message = "les individus on bien été importés !";
        header("Location: ../index.php?messageValide=$message");
	}

	exit;
?>