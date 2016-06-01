create table Brewery (
	id INT PRIMARY KEY,
	addressid INT,
	Name VARCHAR(50) NOT NULL,
	FOREIGN KEY (addressid) REFERENCES Address (id)
);
insert into Brewery (id, addressid, Name) values (1, 1, 'Régine');
insert into Brewery (id, addressid, Name) values (2, 2, 'Vénus');
insert into Brewery (id, addressid, Name) values (3, 3, 'Zhì');
insert into Brewery (id, addressid, Name) values (4, 4, 'Gaétane');
insert into Brewery (id, addressid, Name) values (5, 5, 'Simplifiés');
insert into Brewery (id, addressid, Name) values (6, 6, 'Lài');
insert into Brewery (id, addressid, Name) values (7, 7, 'Anaël');
insert into Brewery (id, addressid, Name) values (8, 8, 'Réjane');
