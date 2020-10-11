--Create table for first names  
CREATE TABLE [fname] ([fname] [varchar](10));
--Create table for family names  
CREATE TABLE [lname] ([lname] [varchar](10));
--Create table for animal names  
CREATE TABLE [animal] ([animal] [varchar](10));
--Create table for language names  
CREATE TABLE [language] ([language] [varchar](10));
----Create tables for users  
CREATE TABLE [users1] ([fname] [varchar](10), [lname] [varchar](10), [animal] [varchar](10), [language] [varchar](10));
CREATE TABLE [users2] ([fname] [varchar](10), [lname] [varchar](10), [animal] [varchar](10), [language] [varchar](10));

INSERT INTO [fname] VALUES ('Bradley');
INSERT INTO [fname] VALUES ('Jessica');
INSERT INTO [fname] VALUES ('Josh');
INSERT INTO [fname] VALUES ('Kaylee');
INSERT INTO [fname] VALUES ('Matthew');
INSERT INTO [fname] VALUES ('Emma');
INSERT INTO [fname] VALUES ('Sommer');
INSERT INTO [fname] VALUES ('Tommy');
INSERT INTO [fname] VALUES ('Emily');
INSERT INTO [fname] VALUES ('Courtney');

INSERT INTO [lname] VALUES ('Beard');
INSERT INTO [lname] VALUES ('Jackson');
INSERT INTO [lname] VALUES ('Joseph');
INSERT INTO [lname] VALUES ('Dun');
INSERT INTO [lname] VALUES ('Hexum');
INSERT INTO [lname] VALUES ('Martinez');
INSERT INTO [lname] VALUES ('Mercury');
INSERT INTO [lname] VALUES ('May');
INSERT INTO [lname] VALUES ('Taylor');
INSERT INTO [lname] VALUES ('Deacon');

INSERT INTO [animal] VALUES ('Cat');
INSERT INTO [animal] VALUES ('Dog');
INSERT INTO [animal] VALUES ('Fish');
INSERT INTO [animal] VALUES ('Horse');
INSERT INTO [animal] VALUES ('Pig');
INSERT INTO [animal] VALUES ('Turtle');
INSERT INTO [animal] VALUES ('Guinea Pig');
INSERT INTO [animal] VALUES ('Hamster');
INSERT INTO [animal] VALUES ('Rat');
INSERT INTO [animal] VALUES ('Mouse');

INSERT INTO [language] VALUES ('English');
INSERT INTO [language] VALUES ('Spanish');
INSERT INTO [language] VALUES ('French');
INSERT INTO [language] VALUES ('Portugese');
INSERT INTO [language] VALUES ('German');
INSERT INTO [language] VALUES ('Russian');
INSERT INTO [language] VALUES ('Slovakian');
INSERT INTO [language] VALUES ('Afrikkans');
INSERT INTO [language] VALUES ('Hindi');
INSERT INTO [language] VALUES ('Urdu');

INSERT INTO users1 SELECT * FROM [fname] CROSS JOIN [lname] CROSS JOIN [animal] CROSS JOIN [language];
INSERT INTO users2 SELECT * FROM [fname] CROSS JOIN [lname] CROSS JOIN [animal] CROSS JOIN [language];

DROP TABLE [fname];
DROP TABLE [lname];
DROP TABLE [animal];
DROP TABLE [language];

DECLARE @cnt INT;
SET @cnt = 0;

WHILE @cnt <= 1000
BEGIN
	INSERT INTO users1 SELECT * FROM users2;
	SET @cnt = @cnt + 1;
END;

SELECT count(*) as cnt FROM users1;

--DROP TABLE users1;
--DROP TABLE users2;

