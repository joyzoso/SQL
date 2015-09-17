USE JProCo
SELECT * FROM [Grant]

BEGIN TRAN
Delete [Grant] WHERE GrantID = '004'

INSERT INTO [Grant] VALUES ('011', 'Seasons Outreach', NULL, 85000)
COMMIT TRAN
	