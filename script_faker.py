from faker import Faker
import mysql.connector

# Initialiser Faker
fake = Faker()

# Paramètres de connexion à la base de données MySQL
host = 'localhost'
port = '3306'
user = 'root'
password = 'root'
database = 'testdb'

# Connexion à la base de données MySQL
conn = mysql.connector.connect(
    host=host,
    port=port,
    user=user,
    password=password,
    database=database
)
cursor = conn.cursor()

# Générer et insérer des données factices dans la table Utilisateurs
for _ in range(100):  # Nombre d'utilisateurs à générer
    nom = fake.last_name()
    prenom = fake.first_name()
    email = fake.email()
    motdepasse = fake.password(length=12)
  
    # Requête SQL pour insérer les données dans la table Utilisateurs
    query = "INSERT INTO Utilisateurs (Nom, Prenom, Email, MotDePasse) VALUES (%s, %s, %s, %s)"
    cursor.execute(query, (nom, prenom, email, motdepasse))

# Valider les changements dans la base de données
conn.commit()

# Fermer le curseur et la connexion à la base de données
cursor.close()
conn.close()

print("Les données ont été insérées avec succès dans la base de données MySQL.")
