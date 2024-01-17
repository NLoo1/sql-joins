-- write your queries here


-- Join the two tables so that every column and record appears, regardless of if there is not an owner_id . 
SELECT * FROM owners JOIN vehicles ON owners.owner_id = vehicles.data;

