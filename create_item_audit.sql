
CREATE TABLE item_audit
(
	item_audit_id		int		identity(1,1)		not null primary key,
	item_id				int							not null,
	item_name			varchar(30)					not null,
	item_type			varchar(30)					not null,
	price				decimal(6,2)				not null,
	operation			varchar(6)					NOT NULL ,
	create_date			datetime					not null default getdate(),
	user_id				varchar(30)					not null default system_user
);