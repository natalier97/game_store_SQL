-- psql game_store_db < practice_schema.sql

DROP TABLE IF EXISTS gaming_engine CASCADE;
CREATE TABLE gaming_engine(
    engine_id SERIAL PRIMARY KEY,
    engine VARCHAR(50) NOT NULL UNIQUE
);


DROP TABLE IF EXISTS game CASCADE;
CREATE TABLE game(
    game_id SERIAL PRIMARY KEY,
    game_title VARCHAR(50) UNIQUE NOT NULL
        CHECK(game_title ~ '^[A-Z]+[A-Za-z0-9 _\-:''\\]+$'),
    game_quantity INT NOT NULL
        CHECK(game_quantity  >= 1 AND game_quantity <= 50),
    game_price DECIMAL(5,2) NOT NULL
        CHECK(game_price > 10 and game_price < 60),
    engine_id INT,
    FOREIGN KEY (engine_id) REFERENCES gaming_engine(engine_id)
);



DROP TABLE IF EXISTS poster CASCADE;
CREATE TABLE poster(
    poster_id SERIAL PRIMARY KEY,
    poster_title VARCHAR(50) UNIQUE NOT NULL
        CHECK(poster_title ~ '^[A-Z0-9]+[A-Za-z0-9 \-]+$'),
    poster_quantity INT NOT NULL
        CHECK(poster_quantity >= 1 and poster_quantity < 31),
    poster_price DECIMAL(5,2)
        CHECK(poster_price >= 6.00 and poster_price <= 20.00)
);




DROP TABLE IF EXISTS action_figure CASCADE;
CREATE TABLE action_figure(
    action_figure_id SERIAL PRIMARY KEY,
    action_figure_title VARCHAR(50) NOT NULL UNIQUE 
        CHECK(action_figure_title ~ '^[A-Z]+[A-Za-z0-9 _\-:''\\]+$'),
    action_figure_quantity INTEGER NOT NULL 
        CHECK(action_figure_quantity >= 1 AND action_figure_quantity < 31),
    action_figure_price DECIMAL(8,2) NOT NULL
        CHECK(action_figure_price >= 10.00 AND action_figure_price <= 100.00)
);





DROP TABLE IF EXISTS genre CASCADE;
CREATE TABLE genre(
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL UNIQUE
);



DROP TABLE IF EXISTS genre_game CASCADE;
CREATE TABLE genre_game(
    genre_game_id SERIAL PRIMARY KEY,
    game_id INT,
    genre_id INT,
    FOREIGN KEY (game_id) REFERENCES game(game_id),
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);



/*     EMPLOYEEES --------------------------------------------- */

DROP TABLE IF EXISTS employee CASCADE;
CREATE TABLE employee(
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(75) NOT NULL
        CHECK(employee_name ~ '^[A-Z]+[A-Za-z ]*$'),
    position VARCHAR(50) NOT NULL
        CHECK(position in 
        ('Sales Associate', 
        'Store Manager', 
        'Inventory Clerk', 
        'Customer Service Representative', 
        'IT Specialist', 
        'Marketing Coordinator', 
        'Assistant Manager', 
        'Finance Analyst', 
        'Security Officer', 
        'HR Coordinator')),
    salary DECIMAL(10,2) NOT NULL
        CHECK(salary > 20000 AND salary < 70000)
);



DROP TABLE IF EXISTS social_security CASCADE;
CREATE TABLE social_security(
    ssn_id SERIAL PRIMARY KEY,
    employee_id INT,
    ssn VARCHAR(20) NOT NULL UNIQUE
        CHECK (ssn ~ '^\d{3}-\d{2}-\d{4}$'),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);




DROP TABLE IF EXISTS shift CASCADE;
CREATE TABLE shift(
    shift_id SERIAL PRIMARY KEY,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    employee_id INT, 
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);







\COPY action_figure FROM '/home/natalie/code_platoon/assignments/7th-week-assignments/game_store/action_figure.csv' WITH CSV HEADER;

\COPY gaming_engine FROM '/home/natalie/code_platoon/assignments/7th-week-assignments/game_store/gaming_engine.csv' WITH CSV HEADER;


\COPY poster FROM '/home/natalie/code_platoon/assignments/7th-week-assignments/game_store/poster.csv' WITH CSV HEADER;


\COPY game FROM '/home/natalie/code_platoon/assignments/7th-week-assignments/game_store/game.csv' WITH CSV HEADER;


\COPY genre FROM '/home/natalie/code_platoon/assignments/7th-week-assignments/game_store/genre.csv' WITH CSV HEADER;

\COPY genre_game FROM '/home/natalie/code_platoon/assignments/7th-week-assignments/game_store/genre_game.csv' WITH CSV HEADER;


\COPY employee FROM '/home/natalie/code_platoon/assignments/7th-week-assignments/game_store/employee.csv' WITH CSV HEADER;

\COPY social_security FROM '/home/natalie/code_platoon/assignments/7th-week-assignments/game_store/social_security.csv' DELIMITER ',' CSV HEADER;

\COPY shift FROM '/home/natalie/code_platoon/assignments/7th-week-assignments/game_store/shifts.csv' WITH CSV HEADER;

