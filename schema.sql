CREATE DATABASE products;

CREATE TABLE product (
	id int NOT NULL UNIQUE,
	name varchar(50),
	desc text,
	SKU varchar(50),
	category_id int NOT NULL,
	inventory_id int NOT NULL,
	price decimal(5,2),
	discount_id int,
	created_at timestamp,
	modified_at timestamp,
	deleted_at timestamp,
	PRIMARY KEY (id),
	FOREIGN KEY (category_id) REFERENCES product_category(id),
	FOREIGN KEY (inventory_id) REFERENCES product_inventory(id),
	FOREIGN KEY (discount_id) REFERENCES product_discount(id),
);

CREATE TABLE product_category (
	id int NOT NULL UNIQUE,
	name varchar(50) UNIQUE,
	desc text,
	created_at timestamp,
	modified_at timestamp,
	deleted_at timestamp,
	PRIMARY KEY (id)
);

CREATE TABLE product_inventory (
	id int NOT NULL UNIQUE,
	quantity int(5),
	created_at timestamp,
	modified_at timestamp,
	deleted_at timestamp,
	PRIMARY KEY (id)
);

CREATE TABLE discount (
	id int NOT NULL UNIQUE,
	name varchar(50),
	desc text,
	discount_percent decimal(2,2),
	active boolean,
	created_at timestamp,
	modified_at timestamp,
	deleted_at timestamp,
	PRIMARY KEY (id)
);


