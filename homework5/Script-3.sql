create table dim_year (
	year_id serial primary key,
	year_val int not null,
	description text
);

create table dim_aplicant(
	aplicant_id serial primary key ,
	first_name varchar(50),
	last_name varchar(50),
	country text,
	city text
);

create table dim_specialization(
	specialization_id serial primary key ,
	name varchar(50),
	cost int not null,
	capasity smallint ,
	faculty text
);

create table fact_application(
	application_id serial primary key,
	aplicant_id int references dim_aplicant(aplicant_id),
	specialization_id int references dim_specialization(specialization_id),
	year_id int references dim_year(year_id),
	exam_score smallint,
	is_enrolled bool
);

insert into dim_year(year_val, description) 
VALUES
	(2024, 'усложнение экзаменов');

insert into dim_aplicant
values 
	('Carvara', 'Pusnina', 'Russia', 'Sankt-Piterburg');
	('Den', 'Sarv', 'Belarus', 'Gomel'),
	('Ilya', 'Gorbatiy', 'Belarus', 'Gomel'),
	('Alexandr', 'Pushkin', 'Russia', 'Sankt-Piterburg'),
	('Andre', 'Ushkin', 'Ukraina', 'Kiev'),
	('Alex', 'Pusnin', 'Russia', 'Sankt-Piterburg');

insert into dim_specialization(name, cost, capasity, faculty)
values 
	('ITD', 4200, 13, 'FAIS'),
	('ITP', 4210, 12, 'FAIS'),
	('ITI', 4300, 10, 'FAIS');

INSERT INTO fact_application (aplicant_id, specialization_id, year_id, exam_score, is_enrolled)
VALUES
    (1, 1, 1, 350, TRUE),   
    (2, 2, 1, 340, FALSE), 
    (3, 3, 1, 400, TRUE),   
    (10, 2, 1, 350, FALSE),  
    (11, 1, 1, 340, TRUE);   