-- write your queries here


SELECT * FROM owners
FULL JOIN vehicles
ON vehicles.owner_id = owners.id
ORDER BY owners.id;



SELECT first_name, COUNT(*) FROM owners
INNER JOIN vehicles
ON vehicles.owner_id = owners.id
GROUP BY owners.id
ORDER BY first_name;

-- avg --
SELECT owners.first_name, ROUND(SUM(vehicles.price)/COUNT(*)) AS average_price, COUNT(*) AS num_cars
FROM owners
INNER JOIN vehicles ON vehicles.owner_id = owners.id
GROUP BY owners.id
HAVING COUNT(*) > 1 AND ROUND(SUM(vehicles.price)/COUNT(*)) >= 10000
ORDER BY num_cars DESC;