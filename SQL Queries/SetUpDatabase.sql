DROP TABLE IF EXISTS General.Series;

CREATE TABLE General.Series(
    Series_Id UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
    Series_Name VARCHAR(255) NOT NULL,
    Created_At DATETIME DEFAULT CURRENT_TIMESTAMP,
    Last_Updated DATETIME DEFAULT CURRENT_TIMESTAMP,
);

DROP TABLE IF EXISTS General.Messages;

CREATE TABLE General.Messages(
    Message_Id UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
    Title VARCHAR(255) NOT NULL,
    Speaker VARCHAR(255) NOT NULL,
    Description VARCHAR(500),
    Series_Id UNIQUEIDENTIFIER FOREIGN KEY REFERENCES General.Series(Series_Id) NOT NULL,
    Created_At DATETIME DEFAULT CURRENT_TIMESTAMP,
    Last_Updated DATETIME DEFAULT CURRENT_TIMESTAMP,
);

INSERT INTO General.Series VALUES (default,'Versus',default,default)
INSERT INTO General.Messages (Message_Id,Title,Speaker,Series_Id,Created_At,Last_Updated) VALUES (default,'Love of God and wrath','Robbie Nutter','177c5a6c-14ea-4aea-ab2f-43f4209cd10c',default,default)
SELECT * FROM General.Messages

SELECT * FROM General.Series;

