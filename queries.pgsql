-- write your queries here
\c joins_exercise

SELECT * FROM owners
FULL JOIN vehicles
ON vehicles.owner_id = owners.id;

SELECT o.first_name, o.last_name, COUNT(*)
FROM owners o
JOIN vehicles
ON o.id = vehicles.owner_id
GROUP BY o.id
ORDER BY count(*);

SELECT o.first_name, o.last_name, ROUND(AVG(v.price)), COUNT(*) 
FROM owners o
JOIN vehicles v
ON o.id = v.owner_id
GROUP BY (o.first_name, o.last_name)
HAVING ROUND(AVG(v.price)) > 10000
ORDER BY o.first_name DESC;