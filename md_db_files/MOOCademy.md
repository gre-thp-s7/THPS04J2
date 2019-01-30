#MOOCademy.md

CREATE TABLE 'cours' ('id_cour' INTEGER PRIMARY KEY AUTOINCREMENT, 'titre' TEXT, 'description' TEXT);

CREATE TABLE 'leçons' ('id_lecon' INTEGER PRIMARY KEY AUTOINCREMENT, 'titre' TEXT, 'body' TEXT, 'cour_id' INTEGER, FOREIGN KEY (cour_id) REFERENCES cour(id);
