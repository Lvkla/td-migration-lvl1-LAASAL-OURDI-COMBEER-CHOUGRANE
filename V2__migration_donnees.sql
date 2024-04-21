CREATE TABLE IF NOT EXISTS utilisateur ( 
  id SERIAL PRIMARY KEY, 
  nom VARCHAR(100), 
  prenom VARCHAR(100), 
  email VARCHAR(100) ); 
INSERT INTO utilisateur (nom, prenom, email) VALUES 
  ('Doe', 'John', 'john.doe@example.com'), 
  ('Smith', 'Jane', 'jane.smith@example.com');

