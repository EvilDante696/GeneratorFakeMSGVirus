# Script Batch par EvilDante

## Description

Ce script Batch interactif, créé par **EvilDante**, offre diverses fonctionnalités utiles pour le réseau et la création de scripts. Il est conçu pour afficher un menu simple permettant à l'utilisateur de choisir entre différentes options.

---

## Fonctionnalités

1. **Ping**  
   Permet de tester la connectivité d'un site web ou d'une adresse IP en effectuant un ping.

2. **Vidage du cache DNS**  
   Vide le cache DNS pour résoudre d'éventuels problèmes de résolution de noms de domaine.

3. **Création d'un script MSGVirus (.vbs)**  
   Génère un fichier `.vbs` qui affiche un message contextuel en boucle.

4. **Quitter le programme**  
   Permet de fermer le programme proprement.

---

## Utilisation

### Lancement du script

1. Enregistrez le script dans un fichier avec l'extension `.bat` (par exemple, `script.bat`).  
2. Double-cliquez sur le fichier pour l'exécuter.

---

## Menu principal

Lors du lancement du script, un menu s'affiche avec les options suivantes :

- `1 - Ping`  
  Permet de tester la connexion à une adresse en effectuant un ping.  

- `2 - Vidage du cache DNS`  
  Vide le cache DNS pour résoudre les problèmes de réseau.  

- `3 - Création MSGVirus (.vbs)`  
  Génère un fichier `.vbs` avec un message contextuel personnalisé.  

- `4 - Quitter le programme`  
  Ferme le script.

---

## Détails des options

### Option 1 : Ping
- L'utilisateur est invité à entrer une adresse web (par ex. `www.exemple.com`).
- Le script envoie 3 requêtes ping à l'adresse spécifiée.
- Résultat affiché dans la console.

### Option 2 : Vidage du cache DNS
- Vide le cache DNS avec la commande `ipconfig /flushdns`.
- Affiche un message de confirmation.

### Option 3 : Création MSGVirus (.vbs)
- L'utilisateur peut :
  - Entrer un **nom de fichier** (sans extension).
  - Spécifier un **message personnalisé** à afficher dans le script.
- Génère un fichier `.vbs` avec une boucle infinie affichant le message.
- Exemple de sortie :
  ```vbs
  Set WshShell = WScript.CreateObject("WScript.Shell")
  Do
      WshShell.PopUp "Votre message ici", 3, "Virus MSG", 64
  Loop
