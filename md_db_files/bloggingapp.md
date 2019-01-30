.mode column
.header on

CREATE TABLE 'user' ('id_user' INTEGER PRIMARY KEY AUTOINCREMENT, 'name' TEXT);
INSERT INTO user (name) VALUES ('guillaume');
INSERT INTO user (name) VALUES ('max');
INSERT INTO user (name) VALUES ('charles');
INSERT INTO user (name) VALUES ('quentin');
INSERT INTO user (name) VALUES ('yaya');
SELECT * FROM user;


CREATE TABLE 'article' ('id_article' INTEGER PRIMARY KEY AUTOINCREMENT, 'name_of_article' TEXT, 'user_id' INTEGER, FOREIGN KEY(user_id) REFERENCES user(id));
INSERT INTO article (name_of_article, user_id) VALUES ('télé', '3');
INSERT INTO article (name_of_article, user_id) VALUES ('chaise de gamer', '5');
INSERT INTO article (name_of_article, user_id) VALUES ('repose pied', '5');
INSERT INTO article (name_of_article, user_id) VALUES ('support ipad', '5');
INSERT INTO article (name_of_article, user_id) VALUES ('support ipad', '4');
INSERT INTO article (name_of_article, user_id) VALUES ('anneau vibrant', '3');
INSERT INTO article (name_of_article, user_id) VALUES ('casque DJ', '4');
SELECT * FROM article;


CREATE TABLE 'category' ('id_category' INTEGER PRIMARY KEY AUTOINCREMENT, 'title' TEXT);
INSERT INTO category (title) VALUES ('mobilier');
INSERT INTO category (title) VALUES ('geekerie');
INSERT INTO category (title) VALUES ('sextoy');
INSERT INTO category (title) VALUES ('musique');

CREATE TABLE 'article_category' (
                        article_id INTEGER,
                        category_id INTEGER,
                        FOREIGN KEY(article_id) REFERENCES article(id),
                        FOREIGN KEY(category_id) REFERENCES category(id) );

SELECT * FROM article;
SELECT * FROM category;

INSERT INTO article_category (article_id, category_id) VALUES ('1', '1');
INSERT INTO article_category (article_id, category_id) VALUES ('1', '2');
INSERT INTO article_category (article_id, category_id) VALUES ('2', '1');
INSERT INTO article_category (article_id, category_id) VALUES ('3', '1');
INSERT INTO article_category (article_id, category_id) VALUES ('4', '2');
INSERT INTO article_category (article_id, category_id) VALUES ('5', '2');
INSERT INTO article_category (article_id, category_id) VALUES ('6', '3');
INSERT INTO article_category (article_id, category_id) VALUES ('7', '4');



CREATE TABLE 'tag' ('id_tag' INTEGER PRIMARY KEY AUTOINCREMENT, 'title' TEXT, 'colour' TEXT);
INSERT INTO tag (title, colour) VALUES ('jean pierre chevenement', 'beau gosse');
INSERT INTO tag (title, colour) VALUES ('amazon', 'sont des capitaliste');
INSERT INTO tag (title, colour) VALUES ('vive le café', 'jus de chaussette');



CREATE TABLE 'category_tag' (
                        category_id INTEGER,
                        tag_id INTEGER,
                        FOREIGN KEY(category_id) REFERENCES category(id),
                        FOREIGN KEY(tag_id) REFERENCES tag(id) );

SELECT * FROM category;
SELECT * FROM tag;

INSERT INTO category_tag (category_id, tag_id) VALUES ('4', '1');
INSERT INTO category_tag (category_id, tag_id) VALUES ('2', '2');
INSERT INTO category_tag (category_id, tag_id) VALUES ('3', '2');


.table


SELECT * FROM article JOIN user ON user.id = article.user_id WHERE user.name = 'guillaume';

SELECT * FROM user JOIN article ON user.id = article.user_id WHERE article.name_of_article = 'télé';

SELECT * FROM user JOIN article ON user.id = article.user_id WHERE article.name_of_article = 'support ipad';



SELECT 
article.name_of_article AS article_name, 
category.title AS category_name 
FROM article_category 
JOIN article ON article_category.article_id = article.id 
JOIN category ON article_category.category_id = category.id;

