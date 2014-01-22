
/*Table Script Creation */
DROP TABLE  IF EXISTS company;
DROP TABLE  IF EXISTS user;
DROP TABLE  IF EXISTS genre;
DROP TABLE  IF EXISTS state;
DROP TABLE  IF EXISTS review;
DROP TABLE  IF EXISTS games;
DROP TABLE  IF EXISTS platforms;
DROP TABLE  IF EXISTS companyType;
DROP TABLE  IF EXISTS genresPerGame;
/*DROP TABLE  IF EXISTS reviewsPerGame;*/
DROP TABLE IF EXISTS publishersPerGame;
DROP TABLE IF EXISTS developersPerGame;
DROP TABLE IF EXISTS platformsPerGame;

CREATE TABLE company(
       name varchar(50) NOT NULL
   ,   shortName varchar (10)
   ,   type varchar(20)
   ,   region varchar (30)
   ,PRIMARY KEY (name)
) ;


CREATE TABLE user(
   username varchar(15)
   ,   name varchar(50)
   ,   points Int
   ,   icon text
   ,   joined Date
   ,PRIMARY KEY (username)
) ;


CREATE TABLE genre(
   genreName varchar(15) NOT NULL
   ,PRIMARY KEY (genreName)
) ;


CREATE TABLE state(
   stateName varchar(15) NOT NULL
   ,PRIMARY KEY (stateName)
) ;


CREATE TABLE review(
   ID Int NOT NULL AUTO_INCREMENT
   ,   author varchar(15)
   ,   gameID varchar(50)
   ,   score Int
   ,   textReview text
   ,PRIMARY KEY (ID)
) ;

CREATE TABLE games(
   ID varchar (150) NOT NULL
   ,   name varchar(150) NOT NULL
   ,   /*developers varchar(50)
   ,   publisher varchar(50)
   ,*/   images text
   ,   releaseDate Date
   ,   metacriticScore Int
   ,   state varchar(10)
   ,PRIMARY KEY (ID)
) ;


CREATE TABLE platforms(
   platformsName varchar(20) NOT NULL
   ,   platformsShort varchar(10)
   ,PRIMARY KEY (platformsName)
) ;

CREATE TABLE companyType(
   type varchar (20) NOT NULL,
   PRIMARY KEY (type)
);

CREATE TABLE genresPerGame(
   ID int NOT NULL AUTO_INCREMENT,
   gameID varchar(150) NOT NULL,
   genre varchar(20) NOT NULL,
   PRIMARY KEY (ID)
);

CREATE TABLE publishersPerGame(
   ID int NOT NULL AUTO_INCREMENT,
   gameID varchar(150) NOT NULL,
   publisher varchar(50) NOT NULL,
   PRIMARY KEY (ID)
);

CREATE TABLE developersPerGame(
   ID int NOT NULL AUTO_INCREMENT,
   gameID varchar(150) NOT NULL,
   developer varchar(50) NOT NULL,
   PRIMARY KEY (ID)
);

CREATE TABLE platformsPerGame(
   ID int NOT NULL AUTO_INCREMENT,
   gameID varchar(150) NOT NULL,
   platform varchar (20) NOT NULL,
   PRIMARY KEY (ID)
);

/*use strings instead of IDs for some things
can use game and year
index on both and search on both
index field thats composite of two
primary key based on two fields
create primary key as halo_04 or something like that with date 

/*CREATE TABLE reviewsPerGame(
   ID int NOT NULL AUTO_INCREMENT,
   gameID int NOT NULL,
   review int NOT NULL,
   PRIMARY KEY (ID)
); */


















/*reviewsPerGame(
   ID int NOT NULL AUTO_INCREMENT,
   gameID int NOT NULL,
   review int NOT NULL,
   PRIMARY KEY (ID) */
/*INSERT INTO reviewsPerGame VALUES(NULL, 1, 1);
INSERT INTO reviewsPerGame VALUES(NULL, 1, 2);
INSERT INTO reviewsPerGame VALUES(NULL, 1, 3);
INSERT INTO reviewsPerGame VALUES(Null, 2, 4);
INSERT INTO reviewsPerGame VALUES(NULL, 3, 5);
INSERT INTO reviewsPerGame VALUES(NULL, 4, 6);
*/

