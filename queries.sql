-- write your queries here


 SELECT * FROM owners
FULL JOIN vehicles
ON vehicles.owner_id = owners.id
ORDER BY owners.id;