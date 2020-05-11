<?php
	session_start();
?>
<html>
<head>
	<meta charset="utf-8" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="styles/style.css">
</head>

<body>



<h2>Projet MIAGE
<?php if (isset($_GET['messageValide'])){ echo '<strong><font color="green">'.$_GET['messageValide'].'</font></strong>';} ?>
<?php if (isset($_GET['messageError'])){ echo '<strong><font align="center" color="red">'.$_GET['messageError'].'</font></strong>';} ?>
</h2>

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'CreationGroupe')" id="defaultOpen">Creation d'un groupe</button>
  <button class="tablinks" onclick="openCity(event, 'SuppressionGroupe')">Suppression d'un groupe</button>
  <button class="tablinks" onclick="openCity(event, 'ModifierGroupe')">Modifier un groupe</button>
  <button class="tablinks" onclick="openCity(event, 'AjoutIndividu')">Ajouter un/des individu(s)</button>
  <button class="tablinks" onclick="openCity(event, 'ModifierIndividu')">Modifier un individu</button>
  <button class="tablinks" onclick="openCity(event, 'SupprimerIndividu')">Supprimer un individu</button>
  <button class="tablinks" onclick="openCity(event, 'AjoutIndividuDansGroupe')">Ajouter un individu dans un groupe</button>
  <button class="tablinks" onclick="openCity(event, 'SuppressionIndividuDunGroupe')">Supprimer un individu d'un groupe</button>
  <button class="tablinks" onclick="openCity(event, 'ExportIndividuGroupe')">Exporter la liste des individus d'un groupe (.CSV)</button>
  <button class="tablinks" onclick="openCity(event, 'ListeAPI')">Liste des API des individus par groupe</button>
</div>




<div id="CreationGroupe" class="tabcontent">

<h3>Ajout groupe :</h3>
	<form method="POST" action="php/trt_ajoutGroupe.php">
	<div class="form-group">
	    <label for="libgrp">Libellé du goupe :</label>
	    <input type="text" class="form-control" id="libgrp" name="libgrp" placeholder="Libellé groupe">
	    <small id="libgrp" class="form-text text-muted">Veuillez entrer un nom pour votre groupe.</small>
  	</div>

  	<button type="submit" class="btn btn-primary">Valider</button>
	</form>

</div>








<div id="SuppressionGroupe" class="tabcontent">
  <h3>Suppression d'un groupe</h3>
  	<?php
		$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');
			
		$reqGroupe = $bdd->prepare("SELECT * FROM groupe");
		$reqGroupe->execute();
		$result = $reqGroupe->fetchAll();
			
		$reqIndividu = $bdd->prepare("SELECT * FROM individu");
		$reqIndividu->execute();
		$result2 = $reqIndividu->fetchAll();
	?>
<form method="POST" action="php/trt_SupprGroupe.php">
  <div class="form-group">
    <label for="SuppGroupe"> Selectionner le Groupe : </label>
    <select class="form-control" id="SuppGroupe" name="libgrp">
    	<?php 
			foreach($result as $groupe)
			{
				echo "<OPTION>".$groupe[1];
			}
		?>
    </select>
  </div>

  <button type="submit" class="btn btn-primary">Valider</button>
</form>


</div>












<div id="ModifierGroupe" class="tabcontent">
  <h3>Modification du groupe</h3>


  <form method="POST" action="php/trt_ModifierGroupe.php">

	<div class="form-group">
	    <label for="modifgrp">Example select</label>
	    <select class="form-control" id="modifgrp" name="modifgrp">
	      <?php
	  		$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');

			$reqVerif = $bdd->query("SELECT * FROM groupe");
			$reqVerif->execute();
			$result = $reqVerif->rowCount();

			while($donnee = $reqVerif->fetch())
			{
				?>
			    	<option value="<?php echo $donnee['id_groupe']; ?>"> <?php echo $donnee['libelle']; ?></option>
			    <?php
			}
  			?>
	    </select>
  	</div>

  	<div class="form-group">
	    <label for="libellegrp">Nouveau libellé</label>
	    <input type="text" class="form-control" id="libellegrp" name="libellegrp" placeholder="Entrez un nouveau nom">
	    <small id="libellegrp" class="form-text text-muted">Ce nouveau libellé modifiera l'ancien libellé.</small>
	</div>

	<button type="submit" class="btn btn-primary">Valider</button>
</form>


</div>




<div id="AjoutIndividu" class="tabcontent">

	
  <h3>Ajout d'un individu</h3>


  	<form method="POST" action="php/trt_AjoutIndividu.php">
  		<div class="form-group">
		    <label for="exampleFormControlSelect1">Type d'individu :</label>
		    <select class="form-control" id="type" name="type" required>
		      <option value="1">Etudiant</option>
		      <option value="2">Professeur</option>
		    </select>
  		</div>
  		<div class="form-group">
		    <label for="exampleFormControlSelect1">Annuaire :</label>
		    <select class="form-control" id="annuaire" name="annuaire" required>
		      <option value="1">HARPEGE</option>
		      <option value="2">APOGEE</option>
		    </select>
  		</div>
	  <div class="form-group">
	    <label for="nom">Nom</label>
	    <input type="text" class="form-control" id="nom" name="nom" placeholder="Votre nom" required>
	  </div>
	  <div class="form-group">
	    <label for="prenom">Prénom</label>
	    <input type="text" class="form-control" id="prenom" name="prenom" placeholder="Prénom" required>
	  </div>
	  <div class="form-group">
	    <label for="email">Email</label>
	    <input type="email" class="form-control" id="email" name="email" placeholder="Adresse email" required>
	  </div>
	  <div class="form-group">
	    <label for="num">Num</label>
	    <input type="text" class="form-control" id="num" name="num" placeholder="Numéro unique" required>
	    <small id="emailHelp" class="form-text text-muted">Numéro unique référençant un annuaire extérieur.</small>
	  </div>
	  	<div class="form-group">
		    <label for="Niveau">Niveau</label>
		    <select class="form-control" id="Niveau" name="niveau" required>
		      <option value="L1">L1</option>
		      <option value="L2">L2</option>
		      <option value="L3">L3</option>
		      <option value="M1">M1</option>
		      <option value="M2">M2</option>
		    </select>
  		</div>


		<br>

		<button class="btn btn-primary" type="submit" >Valider</button>

	</form>
	<form enctype="multipart/form-data" action="php/import_csv.php" method="post">
			<label>Importer depuis un fichier CSV</label>
			
			<input type="file" name="file" id="file" accept=".csv">
			
			<button class="btn btn-primary" type="submit" id="submit" name="import" class="btn-submit">Import</button>
	</form>
</div>












<div id="ModifierIndividu" class="tabcontent">

	<form method="POST" action="php/trt_ModifierIndividu.php">
	<?php
			$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');
				
			$reqIndividu = $bdd->prepare("SELECT * FROM individu");
			$reqIndividu->execute();
			$result2 = $reqIndividu->fetchAll();
	?>

		<div class="form-group">
			<label for="modifind">Sélectionner un individu :</label>
			<select class="form-control" id="modifind" name="modifind">
			  <?php
				$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');

				$reqVerif = $bdd->query("SELECT * FROM individu");
				$reqVerif->execute();
				$result = $reqVerif->rowCount();

				while($donnee = $reqVerif->fetch())
				{
					?>
						<option value="<?php echo $donnee['id_individu']; ?>"> <?php echo $donnee['nom'] . ' ' . $donnee['prenom']; ?></option>
					<?php
				}
				?>
			</select>
		</div>


		<div class="form-group">
				<label for="exampleFormControlSelect1">Type d'individu :</label>
				<select class="form-control" id="type" name="type" required>
				  <option value="1">Etudiant</option>
				  <option value="2">Professeur</option>
				</select>
			</div>
			<div class="form-group">
				<label for="exampleFormControlSelect1">Annuaire :</label>
				<select class="form-control" id="annuaire" name="annuaire" required>
				  <option value="1">HARPEGE</option>
				  <option value="2">APOGEE</option>
				</select>
			</div>
		  <div class="form-group">
			<label for="nom">Nom</label>
			<input type="text" class="form-control" id="nom" name="nom" placeholder="Votre nom" required>
		  </div>
		  <div class="form-group">
			<label for="prenom">Prénom</label>
			<input type="text" class="form-control" id="prenom" name="prenom" placeholder="Prénom" required>
		  </div>
		  <div class="form-group">
			<label for="email">Email</label>
			<input type="email" class="form-control" id="email" name="email" placeholder="Adresse email" required>
		  </div>
		  <div class="form-group">
			<label for="num">Num</label>
			<input type="text" class="form-control" id="num" name="num" placeholder="Numéro unique" required>
			<small id="emailHelp" class="form-text text-muted">Numéro unique référençant un annuaire extérieur.</small>
		  </div>
			<div class="form-group">
				<label for="Niveau">Niveau</label>
				<select class="form-control" id="Niveau" name="niveau" required>
				  <option value="L1">L1</option>
				  <option value="L2">L2</option>
				  <option value="L3">L3</option>
				  <option value="M1">M1</option>
				  <option value="M2">M2</option>
				</select>
			</div>

	<button type="submit" class="btn btn-primary">Valider</button>
	</form>

</div>





<div id="SupprimerIndividu" class="tabcontent">

<form method="POST" action="php/trt_SupprIndividu.php">
	<?php
		$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');
			
		$reqIndividu = $bdd->prepare("SELECT * FROM individu");
		$reqIndividu->execute();
		$result = $reqIndividu->fetchAll();
	?>

	<div class="form-group">
	    <label for="groupe">Sélectionner un individu :</label>
	    <select class="form-control" id="" name="idindi">
	    	<?php 
				foreach($result as $individu)
				{
					echo "<OPTION value='".$individu[0]."'>".$individu[3]." ".$individu[4];
				}
			?>
	    </select>
  	</div>
	<button type="submit" class="btn btn-primary">Valider</button>
</form>

</div>

	
<div id="AjoutIndividuDansGroupe" class="tabcontent">

<form method="POST" action="php/trt_AjoutIndiGroupe.php">
	<?php
		$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');
			
		$reqGroupe = $bdd->prepare("SELECT * FROM groupe");
		$reqGroupe->execute();
		$result = $reqGroupe->fetchAll();
	?>

	<div class="form-group">
	    <label for="groupe">Sélectionner un groupe :</label>
	    <select class="form-control" id="idgrp" name="idgrp">
	    	<?php 
				foreach($result as $groupe)
				{
					echo "<OPTION value='".$groupe[0]."'>".$groupe[1];
				}
			?>
	    </select>
  	</div>
	
	<?php
			
		$reqIndividu3 = $bdd->prepare("SELECT * FROM Individu i
										WHERE id_individu NOT IN (SELECT id_individu FROM appartenir)
										AND id_statut = 1");
		$reqIndividu3->execute();
		$result4 = $reqIndividu3->fetchAll();
	?>

	<div class="form-group">
	    <label for="groupe">Sélectionner un individu :</label>
	    <select multiple class="form-control" id="idindi" name="idindi[]">
	    	<?php 
				foreach($result4 as $individu)
				{
					echo "<OPTION value='".$individu[0]."'>".$individu[3]." ".$individu[4];
				}
			?>
	    </select>
  	</div>
	
	<div class="form-group">
		<label for="annee">Année :</label>
		<input type="text" class="form-control" id="annee" name="annee" placeholder="Une année" required>
  	</div>

	<button type="submit" class="btn btn-primary">Valider</button>
</form>

</div>


<div id="SuppressionIndividuDunGroupe" class="tabcontent">


<form method="POST" action="php/trt_SupprIndiGroupe.php">
	<?php
		$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');
			
		$reqGroupe = $bdd->prepare("SELECT * FROM groupe");
		$reqGroupe->execute();
		$result = $reqGroupe->fetchAll();
	?>

	<div class="form-group">
	    <label for="groupe">Sélectionner un groupe :</label>
	    <select class="form-control" id="groupe" name="idgrp">
			 <option value="">Sélectionner un groupe</option>
	    	<?php 
				foreach($result as $groupe)
				{
					echo "<OPTION value='".$groupe[0]."'>".$groupe[1];
				}
			?>
	    </select>
  	</div>
  	

	<div class="form-group">
	    <label for="groupe">Sélectionner un individu :</label>
	    <select multiple class="form-control" id="individu" name="idindi[]">
			<option>Selectionner un groupe avant</option>
	    </select>
  	</div>
	<button type="submit" class="btn btn-primary">Valider</button>
</form>
</div>


<div id="ExportIndividuGroupe" class="tabcontent">
	<form method="POST" action="php/export.php">
		<?php
			$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');
				
			$reqGroupe = $bdd->prepare("SELECT * FROM groupe");
			$reqGroupe->execute();
			$result = $reqGroupe->fetchAll();
		?>

		<div class="form-group">
			<label for="groupe">Sélectionner un groupe :</label>
			<select class="form-control" id="groupe2" name="idgrp">
				 <option value="">Sélectionner un groupe</option>
				<?php 
					foreach($result as $groupe)
					{
						echo "<OPTION value='".$groupe[0]."'>".$groupe[1];
					}
				?>
			</select>
		</div>
		
		<button id="buttonExport" type="submit" class="btn btn-primary">Exporter</button>
	</form>
</div>

<div id="ListeAPI" class="tabcontent">
		<?php
			$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');
				
			$reqGroupe = $bdd->prepare("SELECT * FROM groupe");
			$reqGroupe->execute();
			$result = $reqGroupe->fetchAll();
		?>

		<div class="form-group">
				<?php
				if(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on')
				{					
					$url = "https"; 
				}else{
					$url = "http"; 
				}
				
				$url .= "://"; 
					
				$url .= $_SERVER['HTTP_HOST']; 
					
				$urlparts = explode('index.php', $_SERVER['REQUEST_URI'], 2); 
				
				$url .= $urlparts[0];
				
					foreach($result as $groupe)
					{
						echo '<label for="groupe">Lien pour le groupe '.$groupe[1].' : <a href="'.$url.'api/apiIndiGroupe.php?idgrp='.$groupe[0].'">'.$url.'api/apiIndiGroupe.php?idgrp='.$groupe[0].'</a></label>';
					}
				?>
		</div>
</div>

<script src="javascript.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $('#groupe').on('change', function(){
        var idgrp = $(this).val();
        if(idgrp){
            $.ajax({
                type:'POST',
                url:'php/ajaxIndividu.php',
                data:'idgrp='+idgrp,
                success:function(html){
                    $('#individu').html(html);
                }
            }); 
        }else{
            $('#individu').html('<option value="">Selectionner un groupe avant</option>');
        }
    });
});

</script>

</html>