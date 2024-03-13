Using what we've covered about creating Tables with SQL, 
write the SQL queries that will create a Table for Employees, Posters, and Action Figures 
and load the provided CSV data onto your tables.

PART 3 -----------------------------------------

# Game Store III

Utilizing the provided `csv` data and the provided `sql` file for the Game Store project. Take into account the following considerations and apply the appropriate constraints.

- Action Figure
  - action_figure_title: Should only accept Title format, Chars, Integers, and a '-' within the input string, and it should be unique.
  - quantity: The store will always contain one copy in stock for display otherwise we have enough storage to hold up to 30 copies of each figure.
  - price: The minimum price we can afford without losing money is for an action figure to be sold at $10 and the maximum price we will ever charge will be $100.
- Employee
  - employee_name: All Employee names should be in title format and should not allow for special characters or integers
  - position: The only available positions within the store are Sales Associate, Store Manager, Inventory Clerk, Customer Service Representative, IT Specialist, Marketing Coordinator, Assistant Manager, Finance Analyst, Security Officer, HR Coordinator. No other input should be accepted.
  - salary: We will always pay above $16.66 an hour but we can't pay anything higher than $31.25 an hour.
- Poster
  - poster_title: Should be in title format, unique to every poster and should accept '-' as a special character.
  - quantity: We will always keep one item in stock and have enough storage to hold up to 30 of this item.
  - price: We will never charge more than $20 for a poster but we can't afford to go lower than $6.



  PART 4 -----------------------------------------
  # Game Store IV

![schema](./resources/schema.png)

The Game Store has it's foundational data now placed within our schema and the owners are very happy with their ability to maintain their database efficiently through PostgreSQL instead of using spreadsheets!

Now the owners want us to take it a step further and gave us the following requirements:

- Add `genres` into our games where many games can have many genres through a connecting table `genre_game`.
- Add `gaming_engine` where many games can belong to one engine.
- Add `social_security` where every employee should have a single ssn entry.
- Add `shift` for employees tracking timestamps for start and end times where an employee can have many shifts.

> Ensure to consider constraints and reference the provided csv data. The image above should give us as developers the main roadmap but the csv data will always be our source of truth. Constraints are important so don't skip them!


  PART 5 -----------------------------------------
  # SQL Query Challenges

Dear Developer,

Welcome to the SQL Query Challenges! We hope you enjoy putting your SQL skills to the test. Below are 35 scenarios, each requiring a query to retrieve specific information from the provided database schema. Read the scenarios carefully and craft the appropriate SQL queries to fulfill each request.

**Write all your queries within [queries.sql](./store/queries.sql)**

## Scenario 1

Retrieve the names of all gaming engines.

## Scenario 2

Find the total quantity of all games in stock.

## Scenario 3

Get the unique titles of all games with a price higher than $30.00.

## Scenario 4

List the titles and quantities of games with less than 20 in stock.

## Scenario 5

Find the total number of genre-game associations.

## Scenario 6

Retrieve the titles of action figures with a price between $20.00 and $50.00.

## Scenario 7

List the poster titles and prices for posters with quantities between 15 and 30.

## Scenario 8

Get the names and positions of employees earning more than $40,000 per year.

## Scenario 9

Find the total number of social security entries.

## Scenario 10

Retrieve the start and end times of all shifts.

## Scenario 11

Get the names and salaries of employees working on shifts.

## Scenario 12

List the action figures with a quantity less than 15.

## Scenario 13

Retrieve the titles of games with the word 'Warzone' in their title.

## Scenario 14

Find the total number of genres.

## Scenario 15

Get the names and quantities of action figures with prices over $27.00.

## Scenario 16

Retrieve the names of employees in the 'IT Specialist' position.

## Scenario 17

List the game titles with quantities greater than 25.

## Scenario 18

Find the total quantity of all items (games, action figures, and posters).

## Scenario 19

Retrieve the social security numbers and names of employees with salaries over $50,000.

## Scenario 20

Get the names and quantities of posters with prices between $10.00 and $15.00.

## Scenario 21

List the names and quantities of posters with a price less than $8.00.

## Scenario 22

Retrieve the employee names and salaries for 'Marketing Coordinator' and 'Finance Analyst' positions.

## Scenario 23

Find the total quantity of action figures in stock.

## Scenario 24

Get the titles and quantities of games with a quantity between 15 and 30.

## Scenario 25

List the names and salaries of employees working on shifts with a start time after '2024-01-01'.

## Scenario 26

Retrieve the titles and prices of games with prices less than $20.00.

## Scenario 27

Find the total quantity of action figures with prices between $25.00 and $30.00.

## Scenario 28

Get the names and positions of employees working on shifts with a start time before '2024-03-07 13:00:00'.

## Scenario 29

List the names and quantities of action figures with a quantity greater than 10.

## Scenario 30

Retrieve the titles and quantities of posters with quantities greater than 25.

## Scenario 31

Find the total number of shifts.

## Scenario 32

Get the names and positions of employees working on shifts with a start time between '2024-02-01' and '2024-03-07 13:00:00'.

## Scenario 33

List the game titles with quantities less than 20.

## Scenario 34

Retrieve the names and quantities of action figures with prices over $23.00.

## Scenario 35

Find the total quantity of posters in stock.

Happy querying!

Best regards,
SQL Challenges Team