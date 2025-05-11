# 🎯 Jeu de Devinettes en Bash

Ce script Bash est un petit **jeu de devinettes** dans lequel le joueur doit trouver un nombre aléatoire entre 1 et 100. Il enregistre également les meilleurs scores dans un fichier.

---

## 🕹️ Fonctionnalités

- Génère un nombre aléatoire entre 1 et 100.
- Invite l'utilisateur à deviner le nombre.
- Donne un indice "plus petit" ou "plus grand" à chaque tentative.
- Compte le nombre d’essais.
- Enregistre le score (nom du joueur + nombre d’essais) dans un fichier `score.txt`.
- Permet de quitter le jeu à tout moment avec `exit`.
- Affiche l’historique des scores à la fin de chaque partie.

---

## 🚀 Utilisation

### 1. Donner les permissions d'exécution :

```bash
chmod +x devinette.sh
