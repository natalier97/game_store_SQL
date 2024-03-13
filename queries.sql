-- ## Scenario 1 -Retrieve the names of all gaming engines.
-- SELECT engine FROM gaming_engine;



-- ## Scenario 2 Find the total quantity of all games in stock.
-- SELECT SUM(game_quantity) FROM game;


-- ## Scenario 3 Get the unique titles of all games with a price higher than $30.00.
-- SELECT game_title FROM game WHERE game_price > 30;



-- ## Scenario 4- List the titles and quantities of games with less than 20 in stock.
-- SELECT game_title, game_quantity FROM game WHERE game_quantity < 20;

-- ## Scenario 5- Find the total number of genre-game associations.
-- SELECT COUNT(genre_game_id) AS genre_game_associations FROM genre_game;


-- ## Scenario 6-- Retrieve the titles of action figures with a price between $20.00 and $50.00.
-- SELECT action_figure_title FROM action_figure WHERE action_figure_price >20 AND action_figure_price < 50;


-- ## Scenario 7-- List the poster titles and prices for posters with quantities between 15 and 30.
-- SELECT poster_title FROM poster WHERE poster_quantity < 30 AND poster_quantity > 15;

-- ## Scenario 8-- Get the names and positions of employees earning more than $40,000 per year.
-- SELECT employee_name, position FROM employee WHERE salary > 40000;


-- ## Scenario 9-- Find the total number of social security entries.
-- SELECT COUNT(ssn_id) FROM social_security;


-- ## Scenario 10- Retrieve the start and end times of all shifts.
-- SELECT start_time, end_time FROM shift;


-- ## Scenario 11- Get the names and salaries of employees working on shifts.
-- SELECT employee.employee_name, employee.salary FROM employee
-- JOIN shift ON shift.employee_id = employee.employee_id;


-- ## Scenario 12- List the action figures with a quantity less than 15.
-- SELECT action_figure_title FROM action_figure WHERE action_figure_quantity < 15;


-- ## Scenario 13- Retrieve the titles of games with the word 'Warzone' in their title.
-- SELECT game_title FROM game WHERE game_title LIKE '%Warzone%';


-- ## Scenario 14- Find the total number of genres.
-- SELECT COUNT(genre_id) FROM genre;



-- ## Scenario 15- Get the names and quantities of action figures with prices over $27.00.
-- SELECT action_figure_title, action_figure_quantity FROM action_figure WHERE action_figure_price > 27;



-- ## Scenario 16- Retrieve the names of employees in the 'IT Specialist' position.
-- SELECT employee_name FROM employee WHERE position IN ('IT Specialist');


-- ## Scenario 17-- List the game titles with quantities greater than 25.
-- SELECT game_title FROM game WHERE game_quantity > 25;


-- ## Scenario 18- Find the total quantity of all items (games, action figures, and posters).
-- SELECT SUM(game.game_quantity) + SUM(action_figure.action_figure_quantity) + SUM(poster.poster_quantity) AS all_sum
--         FROM game
--         JOIN action_figure ON game.game_id = action_figure.action_figure_id 
--         JOIN poster ON poster.poster_id = game.game_id;

-- SELECT SUM(game_quantity) AS game_sum FROM game;
-- SELECT SUM(action_figure_quantity) AS action_figure_sum FROM action_figure;
-- SELECT SUM(poster_quantity) AS poster_sum FROM poster;



-- ## Scenario 19- Retrieve the social security numbers and names of employees with salaries over $50,000.
-- SELECT employee.employee_name, social_security.ssn FROM employee
-- JOIN social_security ON social_security.employee_id = employee.employee_id
-- WHERE employee.salary > 50000;



-- ## Scenario 20- Get the names and quantities of posters with prices between $10.00 and $15.00.
-- SELECT poster_title, poster_quantity FROM poster WHERE poster_price > 10 AND poster_price < 15;




-- ## Scenario 21- List the names and quantities of posters with a price less than $8.00.
-- SELECT poster_title, poster_quantity FROM poster WHERE poster_price < 8;



-- ## Scenario 22- Retrieve the employee names and salaries for 'Marketing Coordinator' and 'Finance Analyst' positions.
-- SELECT employee_name, salary FROM employee WHERE position IN ('Marketing Coordinator','Finance Analyst');



-- ## Scenario 23- Find the total quantity of action figures in stock.
-- SELECT SUM(action_figure_quantity) FROM action_figure;



-- ## Scenario 24- Get the titles and quantities of games with a quantity between 15 and 30.
-- SELECT game_title, game_quantity FROM game WHERE game_quantity > 15 AND game_quantity < 30;



-- ## Scenario 25-- List the names and salaries of employees working on shifts with a start time after '2024-01-01'.
-- SELECT employee.employee_name, employee.salary FROM employee
-- JOIN shift ON employee.employee_id = shift.employee_id
-- WHERE DATE(shift.start_time) > '2024-01-01';


-- ## Scenario 26- Retrieve the titles and prices of games with prices less than $20.00.
-- SELECT game_title, game_price AS cheap_games FROM game WHERE game_price < 20;


-- ## Scenario 27-- Find the total quantity of action figures with prices between $25.00 and $30.00.
-- SELECT SUM(action_figure_quantity) FROM action_figure WHERE action_figure_price BETWEEN 25 AND 30;


-- ## Scenario 28- Get the names and positions of employees working on shifts with a start time before '2024-03-07 13:00:00'.
-- SELECT employee.employee_name, employee.position FROM employee
-- JOIN shift ON employee.employee_id = shift.employee_id
-- WHERE shift.start_time < '2024-03-07 13:00:00';



-- ## Scenario 29 List the names and quantities of action figures with a quantity greater than 10.
-- SELECT action_figure_title, action_figure_quantity FROM action_figure WHERE action_figure_quantity > 10;



-- ## Scenario 30- Retrieve the titles and quantities of posters with quantities greater than 25.
-- SELECT poster_title, poster_quantity FROM poster WHERE poster_quantity > 25;


-- ## Scenario 31- Find the total number of shifts.
-- SELECT COUNT(shift_id) from shift;



-- ## Scenario 32- Get the names and positions of employees working on shifts with a start time between '2024-02-01' and '2024-03-07 13:00:00'.
-- SELECT employee.employee_name, employee.position FROM employee
-- JOIN shift ON employee.employee_id = shift.employee_id
-- WHERE shift.start_time BETWEEN '2024-02-01' AND '2024-03-07 13:00:00';




-- ## Scenario 33 - List the game titles with quantities less than 20.




-- ## Scenario 34

-- Retrieve the names and quantities of action figures with prices over $23.00.

-- ## Scenario 35

-- Find the total quantity of posters in stock.