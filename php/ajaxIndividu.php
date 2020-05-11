<?php 

$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');
 
$idgrp = $_POST['idgrp'];
 
    // Fetch state data based on the specific country 
   $reqIndividu2 = $bdd->prepare("SELECT * FROM Individu i, appartenir a
										WHERE i.id_individu = a.id_individu
										AND id_groupe = $idgrp");
		$reqIndividu2->execute();
     
    // Generate HTML of state options list 
    if($reqIndividu2->rowCount() > 0){ 
		$result3 = $reqIndividu2->fetchAll();
        foreach($result3 as $individu)
			{
				echo "<OPTION value='".$individu[0]."'>".$individu[3]." ".$individu[4];
			}
    }else{ 
        echo '<option value="">Aucun individu</option>'; 
    } 

?>
