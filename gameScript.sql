
SELECT games.ID, developersPerGame.gameID, developersPerGame.developer 
FROM games games, developersPerGame developersPerGame 
WHERE games.ID = developersPerGame.gameID;

SELECT games.ID, developersPerGame.gameID, developersPerGame.developer 
FROM games games, developersPerGame developersPerGame 
WHERE games.ID = developersPerGame.gameID;


SELECT games.ID, developersPerGame.gameID, company.name
FROM company company
LEFT JOIN company on developersPerGame.developer=company.name;


/*get all game deveopers for each game*/
SELECT games.name, developersPerGame.gameID, developersPerGame.developer
FROM developersPerGame developersPerGame
INNER JOIN games games ON games.ID = developersPerGame.gameID;

/*games worked on my companies in WA*/
SELECT games.name, developersPerGame.gameID, developersPerGame.developer, company.region
FROM developersPerGame developersPerGame
	INNER JOIN games games ON games.ID = developersPerGame.gameID
	INNER JOIN  company company ON developersPerGame.developer = company.name
WHERE company.region = 'WA';

/*get all reviews ordered by review score*/
SELECT user.username, review.score, review.textReview, games.name, games.metacriticScore
	FROM user user
	INNER JOIN review review ON user.username = review.author
	INNER JOIN games games ON games.ID = review.gameID
ORDER BY review.score DESC;

/*All reviews of games published by a company in CA*/
SELECT user.username, review.score, games.name, publishersPerGame.publisher, company.name, company.region
	FROM user user
	INNER JOIN review review ON user.username = review.author
	INNER JOIN games games ON games.ID = review.gameID
	INNER JOIN publishersPerGame ON games.ID = publishersPerGame.gameID
	INNER JOIN company company ON publishersPerGame.publisher = company.name
WHERE company.region = 'CA'
ORDER BY company.region;


SELECT AVG(review.score) AS Average_Score, review.gameID, company.name
FROM review review
	INNER JOIN games games ON review.gameID = games.ID
	INNER JOIN developersPerGame developersPerGame ON games.ID = developersPerGame.gameID
	INNER JOIN company company ON developersPerGame.developer = company.name
GROUP BY review.gameID
ORDER BY Average_Score DESC;
	
