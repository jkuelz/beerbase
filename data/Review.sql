﻿create table Review (
	id INT PRIMARY KEY,
	ReviewerID INT,
	BeerID INT,
	Rating INT NOT NULL,
	Title TEXT, 
	ReviewDescription TEXT,
	ReviewDate DATE,
	FOREIGN KEY (ReviewerID) REFERENCES ReviewerAcc (id),
	FOREIGN KEY (BeerID) REFERENCES Beer (id)
);
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (1, 34, 22, 2, 'tristique fusce congue', 'eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi', '5/10/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (2, 9, 22, 4, 'semper rutrum nulla', 'posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat', '2/18/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (3, 11, 59, 1, 'egestas metus aenean', 'at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero', '3/3/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (4, 5, 147, 2, 'luctus rutrum', 'eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor', '12/2/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (5, 24, 184, 3, 'blandit non', 'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam', '4/4/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (6, 25, 197, 1, 'faucibus orci luctus et ultrices', 'posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu', '2/11/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (7, 31, 85, 3, 'diam nam tristique tortor', 'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus', '2/11/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (8, 37, 178, 3, 'elit', 'varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', '6/4/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (9, 28, 5, 1, 'nisl ut volutpat sapien arcu', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet', '4/22/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (10, 12, 69, 3, 'quam sollicitudin vitae', 'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna', '9/13/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (11, 12, 157, 5, 'in sagittis dui', 'cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum', '5/8/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (12, 30, 75, 4, 'lobortis est', 'venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac', '4/5/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (13, 22, 69, 3, 'id justo sit', 'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat', '4/25/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (14, 13, 7, 2, 'praesent lectus vestibulum quam sapien', 'dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero', '8/4/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (15, 40, 111, 2, 'sem fusce', 'semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi', '1/24/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (16, 19, 119, 3, 'tincidunt in leo', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at', '2/17/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (17, 28, 113, 5, 'nam tristique', 'sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum', '6/30/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (18, 17, 154, 5, 'elementum ligula', 'in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus', '8/3/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (19, 39, 41, 1, 'tortor duis mattis', 'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae', '5/14/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (20, 18, 91, 5, 'euismod scelerisque quam turpis', 'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', '2/5/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (21, 17, 94, 5, 'consequat morbi', 'maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam', '9/3/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (22, 30, 76, 1, 'nam ultrices libero non mattis', 'pellentesque eget nunc donec quis orci eget orci vehicula condimentum', '4/9/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (23, 40, 5, 1, 'adipiscing elit', 'elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien', '1/12/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (24, 36, 11, 4, 'ut ultrices vel augue vestibulum', 'in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec', '8/13/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (25, 6, 55, 2, 'ante', 'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', '1/12/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (26, 37, 139, 3, 'dictumst maecenas ut', 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec', '9/5/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (27, 21, 22, 3, 'convallis nunc proin at turpis', 'vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo', '4/18/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (28, 27, 60, 5, 'sit amet turpis elementum ligula', 'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc', '10/7/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (29, 35, 184, 4, 'at vulputate', 'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam', '8/7/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (30, 37, 40, 3, 'elit ac nulla sed vel', 'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem', '4/12/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (31, 12, 71, 3, 'ac neque duis bibendum', 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum', '4/13/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (32, 9, 77, 3, 'vivamus', 'luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus', '2/27/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (33, 12, 68, 5, 'sit amet', 'rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet', '8/10/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (34, 29, 138, 3, 'vivamus vestibulum sagittis sapien', 'integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum', '8/7/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (35, 13, 90, 3, 'sit', 'libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam', '1/10/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (36, 32, 186, 5, 'id sapien in sapien iaculis', 'eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat', '4/30/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (37, 22, 168, 3, 'et tempus', 'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla', '10/5/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (38, 28, 87, 4, 'vestibulum rutrum', 'accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue', '1/7/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (39, 21, 55, 1, 'dapibus', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut', '7/1/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (40, 35, 193, 5, 'diam vitae', 'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras', '10/13/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (41, 18, 82, 1, 'vitae consectetuer', 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at', '9/28/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (42, 3, 56, 2, 'nulla tellus', 'ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices', '12/28/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (43, 10, 23, 5, 'enim in tempor', 'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat', '7/22/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (44, 8, 17, 3, 'sagittis', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis', '4/9/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (45, 9, 152, 4, 'mattis', 'non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie', '6/1/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (46, 24, 133, 1, 'pede', 'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem', '2/10/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (47, 27, 127, 1, 'turpis', 'aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed', '7/1/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (48, 2, 32, 5, 'congue elementum in', 'felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue', '3/6/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (49, 17, 146, 5, 'luctus ultricies eu', 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio', '1/8/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (50, 11, 137, 3, 'massa', 'erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer', '8/23/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (51, 31, 34, 3, 'justo', 'turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante', '6/1/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (52, 4, 184, 2, 'ac', 'blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo', '3/16/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (53, 18, 55, 3, 'odio condimentum', 'vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis', '8/14/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (54, 32, 85, 3, 'orci luctus', 'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi', '2/14/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (55, 10, 5, 5, 'primis in faucibus', 'faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus', '4/22/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (56, 38, 74, 5, 'nullam sit amet turpis', 'luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi', '2/19/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (57, 32, 19, 3, 'dis parturient montes', 'turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget', '10/2/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (58, 19, 175, 4, 'et ultrices posuere', 'duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut', '1/27/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (59, 39, 138, 2, 'vivamus tortor', 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue', '12/4/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (60, 11, 107, 2, 'nunc donec', 'fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', '1/4/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (61, 8, 55, 2, 'vel sem sed', 'convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus', '5/29/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (62, 17, 65, 3, 'tortor quis turpis', 'a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper', '3/16/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (63, 25, 45, 3, 'in felis eu sapien cursus', 'odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', '6/7/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (64, 31, 2, 4, 'vitae nisl aenean lectus pellentesque', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia', '4/9/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (65, 22, 176, 3, 'diam erat fermentum', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non', '8/18/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (66, 19, 126, 4, 'lacinia aenean', 'dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio', '4/2/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (67, 21, 86, 3, 'erat volutpat in congue etiam', 'auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus', '11/10/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (68, 14, 153, 3, 'non', 'ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat', '8/15/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (69, 30, 115, 3, 'luctus et ultrices posuere cubilia', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis', '12/20/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (70, 25, 193, 2, 'mauris', 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', '10/23/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (71, 35, 121, 5, 'luctus tincidunt', 'orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum', '4/7/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (72, 26, 137, 5, 'adipiscing lorem vitae', 'nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue', '1/8/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (73, 6, 140, 4, 'porttitor id consequat in consequat', 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in', '4/1/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (74, 26, 186, 2, 'nullam molestie', 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla', '4/18/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (75, 40, 178, 2, 'eget orci vehicula condimentum curabitur', 'sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique', '5/27/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (76, 4, 40, 2, 'vulputate justo in', 'ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet', '1/15/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (77, 35, 40, 2, 'vestibulum', 'erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis', '4/23/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (78, 1, 61, 5, 'duis at velit eu', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in', '12/18/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (79, 36, 44, 4, 'tellus in sagittis', 'potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis', '7/24/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (80, 38, 99, 2, 'sapien cum sociis natoque', 'cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo', '10/2/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (81, 40, 107, 1, 'dui', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi', '2/23/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (82, 20, 175, 1, 'nisi vulputate nonummy maecenas', 'dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', '3/8/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (83, 13, 144, 1, 'sapien', 'donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla', '10/16/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (84, 40, 31, 3, 'elit sodales scelerisque', 'metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', '10/2/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (85, 28, 173, 5, 'integer a nibh', 'in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat', '2/26/2016');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (86, 7, 157, 4, 'vel nisl duis ac', 'primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi', '5/1/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (87, 18, 28, 1, 'turpis eget elit', 'nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst', '4/16/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (88, 23, 85, 5, 'non velit', 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu', '9/21/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (89, 20, 46, 4, 'maecenas tristique est', 'cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel', '10/9/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (90, 5, 15, 3, 'neque aenean auctor', 'sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis', '2/23/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (91, 32, 184, 1, 'vestibulum', 'pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc', '3/13/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (92, 16, 126, 4, 'magna vulputate', 'tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis', '2/17/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (93, 36, 71, 3, 'lorem id', 'nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus', '10/3/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (94, 31, 178, 3, 'hac habitasse platea', 'habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea', '10/10/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (95, 14, 170, 5, 'vestibulum vestibulum', 'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget', '6/17/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (96, 37, 111, 5, 'augue aliquam', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum', '8/6/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (97, 15, 111, 3, 'donec diam neque vestibulum eget', 'vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', '3/7/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (98, 28, 181, 5, 'suspendisse ornare', 'nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer', '5/20/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (99, 30, 16, 5, 'ac diam cras pellentesque', 'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui', '10/5/2015');
insert into Review (id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) values (100, 25, 123, 5, 'etiam', 'eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus', '1/13/2015');
