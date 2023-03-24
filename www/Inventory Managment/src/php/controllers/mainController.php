<?php
/**
 * Desciption: redirect to the correct pages 
 */
$view =$_GET['view'];
session_start();

switch ($view)
{
    ///////////////////////////////////////////////// Redirect to the correct page (view) \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    case "Accueil":
        include '../views/main.php';
        break;

    default: //page 404 if the user didnt put the correct URL
}