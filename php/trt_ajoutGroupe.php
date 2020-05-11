<?php
$libgrp = $_POST['libgrp'];

$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');

$reqVerif = $bdd->prepare("SELECT * FROM groupe where libelle = '".$libgrp."'");
$reqVerif->execute();
$result = $reqVerif->rowCount();

if($result == 0){
    //le groupe existe pas : on va le créer

    $reqInsert = $bdd->prepare("INSERT INTO groupe
        VALUES ('','$libgrp')");
    $reqInsert->execute();
    $result2 = $reqInsert->rowCount();
   
    if($result2 == 1 )
    {
        $message = "Le groupe a bien été créée !";
        header("Location: ../index.php?messageValide=$message");
    }
    else
    {
        $message = "Error !";
        header("location: ../index.php?messageError=$message");
        
    }
}
else{
    $message = "Error : Ce groupe existe déjà !";
    header("location: ../index.php?messageError=$message");
}
    
?>