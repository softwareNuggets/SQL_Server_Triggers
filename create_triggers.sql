CREATE TRIGGER tr_item_audit_insert
ON item
AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO item_audit (item_id, item_name, item_type, price, 
								operation, create_date,user_id)
	SELECT item_id, item_name, item_type, price, 
							'INSERT', getdate(), SYSTEM_USER
	FROM inserted
	
END


CREATE TRIGGER tr_item_audit_insert
ON item
AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO item_audit (item_id, item_name, item_type, price, 
								operation, create_date,user_id)
	SELECT item_id, item_name, item_type, price, 
							'INSERT', getdate(), SYSTEM_USER
	FROM inserted
	
END