-- Vérification de la complétude des données dans Utilisateurs
SELECT 'Vérification de la complétude des données : Utilisateurs' AS Test, 
       COUNT(*) AS Erreurs
FROM Utilisateurs;

-- Vérification du nombre total d'enregistrements
SELECT 'Vérification du nombre total d\'enregistrements dans toutes les tables' AS Test, 
       COUNT(*) AS Total
FROM (SELECT * FROM Utilisateurs UNION ALL
      SELECT * FROM Profils) AS AllTables;