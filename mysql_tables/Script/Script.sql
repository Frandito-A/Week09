DROP TABLE If EXISTS ingredient;
DROP TABLE If EXISTS step;
DROP TABLE If EXISTS recipe_category;
DROP TABLE If EXISTS unit;
DROP TABLE If EXISTS category;
DROP TABLE If EXISTS recipe;

CREATE TABLE recipe (
recipe_id INT /*AUTO_INCREMENT*/ NOT NULL,
recipe_name VARCHAR(128) NOT NULL,
notes TEXT,
num_servings INT,
prep_time TIME,
cook_time TIME,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE category (
category_id INT /*AUTO_INCREMENT*/ NOT NULL,
category_name VARCHAR(64) NOT NULL);

CREATE TABLE unit (
unit_id INT /*AUTO_INCREMENT*/ NOT NULL,
unit_name_singular VARCHAR(32) NOT NULL,
unit_name_plural VARCHAR(34) NOT NULL );

CREATE TABLE recipe_category (
recipe_id INT NOT NULL,
category_id INT NOT NULL);

CREATE TABLE step (
step_id INT /*AUTO_INCREMENT*/ NOT NULL,
recipe_id INT NOT NULL,
step_order INT NOT NULL,
step_text TEXT NOT NULL);

CREATE TABLE ingredient (
ingredient_id INT/*AUTO_INCREMENT*/ NOT NULL,
recipe_id INT NOT NULL,
unit_id INT NOT NULL,
ingredient_name VARCHAR(64) NOT NULL,
instruction VARCHAR(64),
ingredient_order INT NOT NULL,
amount DECIMAL(7,2)
);
