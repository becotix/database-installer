# Auth with mysql
mysql -u root -p

# Create DB
create database becotix_db; 

# Create User table
create table user (
	id INT NOT NULL AUTO INCREMENT, 
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
# Create Beacon Table
# Create Journey Table
# Create Cost Table