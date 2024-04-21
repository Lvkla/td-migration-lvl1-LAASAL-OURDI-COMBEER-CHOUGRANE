-- Vérification des clés étrangères
SELECT 'Vérification des clés étrangères : Utilisateurs' AS Test, 
       COUNT(*) AS Erreurs
FROM Utilisateurs u
LEFT JOIN Profils p ON u.id_profil = p.id
WHERE p.id IS NULL;

-- Vérification de l'absence de valeurs nulles
SELECT 'Vérification de l\'absence de valeurs nulles : Utilisateurs' AS Test, 
       COUNT(*) AS Erreurs
FROM Utilisateurs
WHERE email IS NULL;