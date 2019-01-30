CREATE TABLE 'Users' (
'id_user' INTEGER PRIMARY KEY AUTOINCREMENT, 
'user_name' TEXT);
INSERT INTO Users (user_name) VALUES ('babar');

CREATE TABLE 'Liens' (
'id_lien' INTEGER PRIMARY KEY AUTOINCREMENT, 
'url' TEXT,
user_id INTEGER, 
FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO Liens (url) VALUES ('3W.errror404.com');

CREATE TABLE 'CommentairesDeLiens' (
'id_commentaire' INTEGER PRIMARY KEY AUTOINCREMENT, 
'commentaire' TEXT, 
'user_id' INTEGER, 
'lien_id' INTEGER,
FOREIGN KEY(user_id) REFERENCES Users(id),
FOREIGN KEY(lien_id) REFERENCES Liens(id));

INSERT INTO CommentairesDeLiens (commentaire) VALUES ('il fonctionne pas ton lien pourri');


CREATE TABLE 'ComDeCom' (
'id_comdecom' INTEGER PRIMARY KEY AUTOINCREMENT,
'commentaire' TEXT,
'user_id' INTEGER,
'com_id' INTEGER,
FOREIGN KEY(user_id) REFERENCES users(id),
FOREIGN KEY(com_id) REFERENCES CommentairesDeLiens(id));

INSERT INTO ComDeCom (commentaire) VALUES ('c_est toi qui est pourri !');
