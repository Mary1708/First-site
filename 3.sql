UPDATE clients 
SET regist = SUBSTR(regist, 7, 4)|| '.'||SUBSTR(regist, 4, 2)|| '.'||SUBSTR(regist, 1, 2)

SELECT * FROM clients ORDER BY regist DESC LIMIT 1

SELECT DISTINCT(SUBSTR(birth, 1, 4)) FROM clients

SELECT id_cake, MAX(id_cake) AS 'total_items' FROM cakes ORDER BY id_cake DESC

SELECT AVG(2021-SUBSTR(birth, 1, 4)) FROM clients WHERE  (11-SUBSTR(regist, 6,7))<=2 and SUBSTR(regist, 1, 4)='2020'