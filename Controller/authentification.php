<?php
require_once("./Afficheradministrateur.php");
require_once("./Etudiant.php");
global $connect
include 'connect.php';
session_start();
if(isset($_POST['submit'])){


    $email = $_POST['email'];
    $mdp = $_POST['mdp'];
    
    if (strpos($email, "adminiam")){
       header('location:menuAdministrateur.php'); 
        
    }
    else{
      
        $email = $_SESSION['email'];
        header('location:menuEtudiant.php');
    }



}

?>









