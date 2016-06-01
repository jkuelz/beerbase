create table BrewerAcc (
	id INT PRIMARY KEY,
	Username VARCHAR(50) NOT NULL,
	Password VARCHAR(50) NOT NULL,
	userid INT NOT NULL,
	FOREIGN KEY (userid) REFERENCES usert (id)
);
insert into BrewerAcc (id, Username, Password, userid) values (1, 'rfranklin0', '2ueCO0', 41);
insert into BrewerAcc (id, Username, Password, userid) values (2, 'cdaniels1', 'CIRiv3eWc61', 42);
insert into BrewerAcc (id, Username, Password, userid) values (3, 'vross2', 'M7wOI2P', 43);
insert into BrewerAcc (id, Username, Password, userid) values (4, 'jstewart3', 'UBJBX8Zj', 44);
insert into BrewerAcc (id, Username, Password, userid) values (5, 'arichardson4', 'Y9JTvBabp', 45);
insert into BrewerAcc (id, Username, Password, userid) values (6, 'kmoreno5', 'sg5HOwBeN', 46);
insert into BrewerAcc (id, Username, Password, userid) values (7, 'hknight6', 'AFXz7Nl', 47);
insert into BrewerAcc (id, Username, Password, userid) values (8, 'cmason7', 'JfNIWRAI0', 48);
insert into BrewerAcc (id, Username, Password, userid) values (9, 'mboyd8', 'ONiWyHJCxbt', 49);
insert into BrewerAcc (id, Username, Password, userid) values (10, 'pstevens9', 'mjFVMrA82', 50);
