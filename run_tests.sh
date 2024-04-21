#!/bin/bash

# Chemin absolu vers le dossier contenant les scripts SQL de test
SQL_DIR=$(pwd)/sql

# Chemin absolu vers le dossier contenant le fichier de configuration Flyway
CONF_DIR=$(pwd)/conf

# Nom de l'image Docker Flyway
FLYWAY_IMAGE=flyway/flyway

# Commande pour exécuter Flyway avec les scripts de test
echo "Exécution des scripts de test avec Flyway..."
docker run --rm -v $SQL_DIR:/flyway/sql -v $CONF_DIR:/flyway/conf $FLYWAY_IMAGE migrate

# Vérification du résultat de l'exécution
if [ $? -eq 0 ]; then
    echo "Les tests ont été exécutés avec succès."
else
    echo "Erreur lors de l'exécution des tests."
    exit 1
fi