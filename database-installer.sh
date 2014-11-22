# Auth with mysql (password removed)
mysql -u root -p

# Create DB
create database becotix_db; 

# Use the becotix db 
use becotix_db; 

# Create User table
create table user (
	id INT NOT NULL AUTO_INCREMENT, 
	name varchar(50) not null,
	email varchar(100) not null,
	addr1 varchar(120) not null,
	addr2 varchar(120) not null,
	city varchar(120) not null,
	region varchar(120) not null,
	postcode varchar(16) not null,
	cc_hash varchar(500) not null,
	pass_hash varchar(500) not null,
	PRIMARY KEY (id)
);

# Create Stop Table
create table stop (
	id INT NOT NULL AUTO_INCREMENT, 
	name varchar(80) not null,
	bid INT NOT NULL,
	lat_long varchar(200),
	PRIMARY KEY (id)
);

# Create Beacon Table
create table beacon (
	id INT NOT NULL AUTO_INCREMENT,
	major varchar(10) not null,
	minor varchar(10) not null, 
	PRIMARY KEY (id)
);

# Create Cost table
create table cost (
	id INT NOT NULL AUTO_INCREMENT,
	startid int,
	stopid int,
	price varchar(6),
	PRIMARY KEY (id)
);

# Create Journey Table
create table journey (
	id INT NOT NULL AUTO_INCREMENT, 
	uid int, 
	startid int,
	stopid int,
	starttime datetime,
	stoptime datetime,
	PRIMARY KEY(id)
);

# Create Tickets Table 
create table tickets (
	id INT NOT NULL AUTO_INCREMENT, 
	word varchar(256),
	date datetime,
	colour varchar(9),
	PRIMARY KEY(id)
);