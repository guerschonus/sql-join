-- write your queries here
--query 1--
SELECT * FROM owners o LEFT JOIN vehicles v ON o.id=v.owner_id;
--query 2--
SELECT first_name, last_name, COUNT(*) FROM owners o JOIN vehicles v ON o.id=v.owner_id GROUP BY o.id ORDER BY first_name;
--query 3--
SELECT first_name, last_name, ROUND(AVG(price)), COUNT(*) FROM owners o JOIN vehicles v ON o.id=v.owner_id GROUP BY o.id HAVING COUNT(*)>1 AND AVG(price)>10000;