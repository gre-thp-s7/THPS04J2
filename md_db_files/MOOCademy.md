#MOOCademy.md

CREATE TABLE 'cours' ('id' INTEGER PRIMARY KEY AUTOINCREMENT, 'titre' TEXT, 'description' TEXT);

CREATE TABLE 'leçons' ('id' INTEGER PRIMARY KEY AUTOINCREMENT, 'titre' TEXT, 'body' TEXT, 'cour_id' INTEGER, FOREIGN KEY (cour_id) REFERENCES cour(id);
