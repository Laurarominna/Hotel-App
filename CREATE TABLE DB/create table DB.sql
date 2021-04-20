USE HOTEL_APP;

CREATE TABLE clients(
	client_id int PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email int unique
);

CREATE TABLE rooms(
	room_number int PRIMARY KEY,
	room_type VARCHAR(20) not null,
	price_per_night double not null,
	size int not null,
	has_view bool not null
);

CREATE TABLE reservations(
	reservation_id int PRIMARY KEY,
	client_id INT NOT NULL ,
	room_number int not null,
	start_date date not null DEFAULT (current_date),
	end_date date not nulL,
    FOREIGN KEY (client_id) REFERENCES Clients (client_id) ,
    FOREIGN Key (room_number) REFERENCES rooms (room_number)
     
);

CREATE TABLE reviews(
	review_id int primary key,
	client_first_name varchar(50) NOT NULL,
	review_content text not null,
	stars float not null
);

CREATE TABLE employees(
	employee_id int primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	ocupation varchar(50) not null
);




