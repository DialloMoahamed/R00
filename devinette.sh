#!/bin/bash

# fichier pour enregistrer le score
SCORE='score.txt'

# Génère un nombre aléatoire entre 1 et 100
SECRET_NUMBER=$(( RANDOM % 100 + 1 ))
TRIES=0

echo "Bienvenue dans le jeu de devinettes !"
echo "Devinez le nombre (entre 1 et 100). Tapez 'exit' pour quitter."

while true; do
    read -p "Votre proposition : " GUESS

    # Vérification de la sortie
    if [[ "$GUESS" == "exit" ]]; then
        echo "Vous avez quitté le jeu."
        break
    fi

    # Validation de l'entrée (doit être un nombre entier)
    if ! [[ "$GUESS" =~ ^[0-9]+$ ]]; then
        echo "Erreur : veuillez entrer un nombre entier valide."
        continue
    fi

    # Validation de l'entrée (doit être un nombre entier compris entre 1 et 100)
    if ((GUESS > 100 || GUESS < 1)); then
        echo "Erreur : veuillez entrer un nombre entier compris entre 1 et 100"
        continue
    fi

    
    ((TRIES++))

    if (( GUESS > SECRET_NUMBER )); then
        echo "C'est plus grand !"
    elif (( GUESS < SECRET_NUMBER )); then
        echo "C'est plus petit !"
    else
        echo "🎉 Bravo ! Vous avez trouvé le nombre en $TRIES essais."
        read -p "Entrez votre nom pour enregistrer votre score : " PLAYER
        echo "$PLAYER : $TRIES essais" >> "$SCORE"
        break
    fi
done

# Affichage des scores enregistrés
echo -e "\n📜 Historique des scores :"
cat "$SCORE"
