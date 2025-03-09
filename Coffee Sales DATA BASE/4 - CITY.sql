CREATE TABLE CITY(
	CITY_ID INT IDENTITY(0, 1) PRIMARY KEY,
	COUNTRY_ID INT NOT NULL FOREIGN KEY REFERENCES COUNTRY(COUNTRY_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	CITY VARCHAR(30) NOT NULL,
	ZIP_CODE CHAR(5) NOT NULL
)
GO

CREATE OR ALTER TRIGGER TRIGGER_AFTER_INSERT_OR_UPDATE_CITY_ZIP_CODE_LENGTH_5
ON CITY
AFTER INSERT, UPDATE
AS
BEGIN
	SET NOCOUNT ON
	UPDATE CITY
	SET ZIP_CODE = RIGHT(CONCAT(REPLICATE('0', 5), TRIM(CAST(INSERTED.ZIP_CODE AS CHAR(5)))), 5)
	FROM INSERTED
	WHERE CITY.CITY_ID = INSERTED.CITY_ID;
	SET NOCOUNT OFF
END
GO

INSERT INTO CITY
SELECT DISTINCT
	COUNTRY_ID,
	UPPER(TRIM(CITY)) AS CITY,
	UPPER(TRIM(POSTAL_CODE)) AS ZIP_CODE 
FROM COUNTRY A
INNER JOIN STAGING_TABLE B ON A.COUNTRY = B.COUNTRY
ORDER BY COUNTRY_ID, CITY
