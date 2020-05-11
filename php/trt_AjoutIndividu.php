<?php

$type = $_POST['type'];
$annuaire = $_POST['annuaire'];
$nom = $_POST['nom'];
$prenom = $_POST['prenom'];
$email = $_POST['email'];
$num = $_POST['num'];
$niveau = $_POST['niveau'];


$bdd = new PDO('mysql:host=127.0.0.1;dbname=projetmiage','root','');

$reqVerif = $bdd->prepare("SELECT * FROM individu where num = '".$num."'");
$reqVerif->execute();
$result = $reqVerif->rowCount();

if($result == 0){
    //le groupe existe pas : on va le créer

    $reqVerif2 = $bdd->prepare("SELECT nom, prenom FROM individu where num = '".$num."'");
    $reqVerif2->execute();
    $result2 = $reqVerif2->rowCount();
   
    if($result2 == 0)
    {
        //je créer l'individu

        $reqInsert = $bdd->prepare("INSERT INTO individu VALUES ('', '".$type."', '".$annuaire."', '".$nom."', '".$prenom."', '".$email."', '".$num."', '".$niveau."') ");
        $reqInsert->execute();

        $message = "L'individu a bien été créée !";
        header("Location: ../index.php?messageValide=$message");
    }
    else
    {
        $message = "Error : Ce nom et prénom existe déjà !";
        header("location: ../index.php.html?messageError=$message");
        
    }
}
else{
    $message = "Error : Ce num existe déjà !";
    header("location: ../index.php?messageError=$message");
}
    
?>