create table Auth (
	id INT PRIMARY KEY,
	BreweryID INT,
	BrewerAccID INT,
	FOREIGN KEY (BreweryID) REFERENCES Brewery (id),
	FOREIGN KEY (BrewerAccID) REFERENCES BrewerAcc (id)
);
insert into Auth (id, BreweryID, BrewerAccID) values (1, 1, 1);
insert into Auth (id, BreweryID, BrewerAccID) values (2, 2, 2);
insert into Auth (id, BreweryID, BrewerAccID) values (3, 3, 3);
insert into Auth (id, BreweryID, BrewerAccID) values (4, 4, 4);
insert into Auth (id, BreweryID, BrewerAccID) values (5, 5, 5);
insert into Auth (id, BreweryID, BrewerAccID) values (6, 6, 6);
insert into Auth (id, BreweryID, BrewerAccID) values (7, 7, 7);
insert into Auth (id, BreweryID, BrewerAccID) values (8, 8, 8);
insert into Auth (id, BreweryID, BrewerAccID) values (9, 7, 9);
insert into Auth (id, BreweryID, BrewerAccID) values (10, 8, 10);
