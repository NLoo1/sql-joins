-- write your queries here


-- Join the two tables so that every column and record appears, regardless of if there is not an owner_id . 
SELECT * FROM owners JOIN vehicles ON owners.owner_id = vehicles.data;

-- Count the number of cars for each owner. Display the owners first_name , last_name and count of vehicles. The first_name should be ordered in ascending order. 
SELECT first_name,last_name, COUNT(owners.id) AS count FROM owners
JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY owners.id ORDER BY count ASC;

-- Count the number of cars for each owner and display the average price for each of the cars as integers. Display the owners first_name , last_name, average price and count of vehicles. The first_name should be ordered in descending order. Only display results with more than one vehicle and an average price greater than 10000.
SELECT owners.first_name,owners.last_name, ROUND(AVG(vehicles.price)) AS avg_price, COUNT(vehicles.owner_id) AS num_cars FROM owners
JOIN vehicles ON vehicles.owner_id = owners.id
GROUP BY owners.first_name, owners.last_name
HAVING COUNT(vehicles.owner_id) > 1 AND AVG(vehicles.price) > 1000
ORDER BY owners.first_name DESC;
