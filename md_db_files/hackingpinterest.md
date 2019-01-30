#hackingpinterest.md

CREATE TABLE 'Users' (
	'id_user' INTEGER PRIMARY KEY AUTOINCREMENT, 
	'user_name' TEXT
	);


CREATE TABLE 'Pins' (
	'id_pins' INTEGER PRIMARY KEY AUTOINCREMENT, 
	'Pins_name' TEXT, 
	'url' INTEGER,
	user_id INTEGER, 
	FOREIGN KEY(user_id) REFERENCES users(id)
	);




CREATE TABLE 'Commentaires' (
	'id_commentaire' INTEGER PRIMARY KEY AUTOINCREMENT, 
	'commentaire' TEXT, 
	'user_id' INTEGER, 
	'pins_id' INTEGER,
	FOREIGN KEY(user_id) REFERENCES Users(id),
	FOREIGN KEY(pins_id) REFERENCES Pins(id));


