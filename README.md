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