use LearnSQL;

--step 1 -- create a table
--       -- popuplate table with sample data


--drop table item

create table item
(
	item_id		int				not null primary key,
	item_type	varchar(30)		not null,
	item_name	varchar(30)		not null,
	price		decimal(6,2)	not null
)

--truncate table item
INSERT INTO item (item_id, item_type, item_name, price)
VALUES
(1, 'Candy Bar', 'Snickers', 1.99),
(2, 'Chocolate', 'Hershey''s', 2.49),
(3, 'Gummy Candy', 'Haribo', 2.79),
(4, 'Lollipop', 'Tootsie Pop', 0.99),
(5, 'Chewy Candy', 'Starburst', 1.49),
(6, 'Hard Candy', 'Jolly Rancher', 1.59),
(7, 'Candy Bar', 'KitKat', 1.99),
(8, 'Chocolate', 'Milky Way', 1.99),
(9, 'Gummy Candy', 'Werther''s Original', 3.99),
(10, 'Lollipop', 'Dum Dum', 0.49)


