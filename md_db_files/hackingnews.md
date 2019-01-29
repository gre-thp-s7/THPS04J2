CREATE TABLE 'Users' (
	'id' INTEGER PRIMARY KEY AUTOINCREMENT, 
	'user_name' TEXT
	);


CREATE TABLE 'Liens' (
	'id' INTEGER PRIMARY KEY AUTOINCREMENT, 
	'url' TEXT,
	user_id INTEGER, 
	FOREIGN KEY(user_id) REFERENCES users(id)
	);

CREATE TABLE 'CommentairesDeLiens' (
	'id' INTEGER PRIMARY KEY AUTOINCREMENT, 
	'commentaire' TEXT, 
	'user_id' INTEGER, 
	'lien_id' INTEGER,
	FOREIGN KEY(user_id) REFERENCES Users(id),
	FOREIGN KEY(lien_id) REFERENCES Liens(id));

CREATE TABLE 'ComDeCom' (
	'id' INTEGER PRIMARY KEY AUTOINCREMENT,
	'commentaire' TEXT,
	'user_id' INTEGER,
	'com_id' INTEGER,
	FOREIGN KEY(user_id) REFERENCES users(id),
	FOREIGN KEY(com_id) REFERENCES CommentairesDeLiens(id));
