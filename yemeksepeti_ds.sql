CREATE TABLE app_user (
	user_id varchar(7) PRIMARY KEY,
	user_name varchar(20) not null,
	user_surname varchar(20) not null,
	has_saved_card BOOLEAN DEFAULT FALSE
);

CREATE TABLE saved_card (
	card_id varchar(7) PRIMARY KEY,
	user_id varchar(7),
	card_number_masked varchar(16),
	expiry_date varchar(5),
	cvv_masked varchar(3),
	FOREIGN KEY(user_id) REFERENCES app_user(user_id)
);

CREATE TABLE user_address(
	address_id varchar(7) PRIMARY KEY,
	user_id varchar(7),
	title varchar(20),
	city varchar(20),
	address_details varchar(40),
	FOREIGN KEY(user_id) REFERENCES app_user(user_id)
);

CREATE TABLE restaurant(
	restaurant_id varchar(7) primary key,
	name varchar(20),
	city varchar(20),
	average_score NUMERIC(1,1)
);

CREATE TABLE orders(
	order_id varchar(7) primary key,
	user_id varchar(7),
	restaurant_id varchar(7),
	address_id varchar(7),
	total_amount NUMERIC(10,2) NOT NULL CHECK (total_amount >= 0),
	order_date DATE NOT NULL,
	status varchar(20),
	FOREIGN KEY(user_id) REFERENCES app_user(user_id),
	FOREIGN KEY(restaurant_id) REFERENCES restaurant(restaurant_id),
	FOREIGN KEY(address_id) REFERENCES user_address(address_id)
);

CREATE TABLE review(
	review_id varchar(7) PRIMARY KEY,
	order_id varchar(7),
	rating INTEGER NOT NULL CHECK (rating >= 1 AND rating <= 5),
	comment TEXT,
	FOREIGN KEY(order_id) REFERENCES orders(order_id)
);

CREATE TABLE menu_item(
	item_id varchar(7) PRIMARY KEY,
	restaurant_id varchar(7),
	name varchar(20),
	price NUMERIC(3,2),
	is_active BOOLEAN,
	FOREIGN KEY(restaurant_id) REFERENCES restaurant(restaurant_id)
);