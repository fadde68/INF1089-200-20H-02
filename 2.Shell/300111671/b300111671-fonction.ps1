﻿<#
.SYNOPSIS
    Ce script est un laboratoire Powershell

.DESCRIPTION
    Ce script est utilisé pour le laboratoire de programmation en Powershell.

.NOTES
    Author: AbbasSadissou
    Derniere mise à jour: yyyy-mm-dd

#>

# Definition de la fonction
function Stagiaire
 {
 [CmdletBinding()]
 param (
	[Parameter(Mandatory=$true)]
        [String]$personneNom,

	[Parameter(Mandatory=$true)]
	[ValidateRange(9,99)]
        [Int]$personneAge
	
	
    )
	
	#Test d'existance du compte dans Active directory
	try {$existeAD =(Get-ADUser $personneNom)}
	catch {$existeAD =$false}
	
	#Affichage du message d'existence ou de creation de compte
	if ($existeAD) {"le compte du stagiaire{0} existe dans Active Directory." -F $personneNom}
	else {"Vous devez creer le compte de {0} dans Active Directory." -F $personneNom}

	



	 # message de bienvenue 
    	BEGIN {Write-Verbose "Début du script"}
   	 PROCESS { "Bonjour {0} ! Tu as {1} ans." -F $personneNom, $personneAge }
    	END {Write-Verbose "Fin du script"}
}

# Appel de la fonction
Stagiaire Toronto 35
Stagiaire "Pascal Siakam" 26  -verbose
stagiaire "Alice" 7777
stagiaire "Alice" 35

stagiaire "Administrator"
stagiaire "delux" 
stagiaire "brice" 

Get-Help Stagiaire





