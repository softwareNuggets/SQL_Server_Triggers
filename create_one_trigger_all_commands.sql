--drop trigger tr_item_audit
CREATE TRIGGER tr_item_audit
ON item
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @operation varchar(6)

	IF EXISTS (SELECT * FROM deleted)
	BEGIN
		IF EXISTS (SELECT * FROM inserted)
			SET @operation = 'UPDATE'
		ELSE
			SET @operation = 'DELETE'
	END
	ELSE
		SET @operation = 'INSERT'


	IF @operation = 'INSERT'
	BEGIN
		INSERT INTO item_audit (item_id, item_name, item_type, price, 
									operation, create_date,user_id)
		SELECT item_id, item_name, item_type, price, 
								'INSERT', getdate(), SYSTEM_USER
		FROM inserted;
	END	
	ELSE
	BEGIN
		INSERT INTO item_audit (item_id, item_name, item_type, price, 
								operation, create_date,user_id)
		SELECT item_id, item_name, item_type, price, 
							@operation, getdate(), SYSTEM_USER
		FROM deleted;	
	END
END