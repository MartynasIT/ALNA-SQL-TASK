CREATE TABLE VehicleNumber  
  (  
    VehicleID int NOT NULL PRIMARY KEY,  
    VehicleNumber varchar(255) NOT NULL 
);

CREATE TABLE VehicleType  (  
    VehicleTypeID int NOT NULL PRIMARY KEY,  
    VehicleType varchar(255) NOT NULL, 
    VehicleID int, 
    FOREIGN KEY (VehicleID) REFERENCES VehicleNumber (VehicleID)
    ON DELETE CASCADE	
);

CREATE TABLE DepartureStationName  
  (  
    DepartID int NOT NULL PRIMARY KEY,  
    DepName varchar(255) NOT NULL,  
    VehicleID int,  
    FOREIGN KEY (VehicleID) REFERENCES VehicleNumber (VehicleID)
    ON DELETE CASCADE	
);

CREATE TABLE ArrivalStationName  
  (  
    ArriveID int NOT NULL PRIMARY KEY,  
    ArrStationName varchar(255) NOT NULL,  
    VehicleID int,  
    FOREIGN KEY (VehicleID) REFERENCES VehicleNumber(VehicleID) 
    ON DELETE CASCADE	
);


CREATE TABLE ArrivalStationAddress  
  (   
    ArriveAddressID int NOT NULL PRIMARY KEY,   
    ArrivalAddress varchar(255) NOT NULL,   
    VehicleID int,   
    FOREIGN KEY (VehicleID) REFERENCES VehicleNumber (VehicleID)
    ON DELETE CASCADE	
);

CREATE TABLE ArrivalTime  
  (   
    ArriveTimeID int NOT NULL PRIMARY KEY,   
    ArrvTime Timestamp NOT NULL,   
    VehicleID int,   
    FOREIGN KEY (VehicleID) REFERENCES VehicleNumber (VehicleID)
    ON DELETE CASCADE	
);

CREATE TABLE DepartureTime  
  (   
    DepartureTimeID int NOT NULL PRIMARY KEY,   
    DepTime Timestamp NOT NULL ,   
    VehicleID int,   
    FOREIGN KEY (VehicleID) REFERENCES VehicleNumber (VehicleID) 
    ON DELETE CASCADE	
);

CREATE TABLE DepartureStationAddress  
  (   
    DepartureAddressID int NOT NULL PRIMARY KEY,   
    DepAddress varchar(255) NOT NULL,   
    VehicleID int,   
    FOREIGN KEY (VehicleID) REFERENCES VehicleNumber (VehicleID)   
	ON DELETE CASCADE
);



CREATE SEQUENCE seq_number 
MINVALUE 100 
START WITH 100 
INCREMENT BY 1 
CACHE 10;

INSERT INTO VehicleNumber  (VehicleID, VehicleNumber)  
VALUES (seq_number.nextval, 'ES523');

INSERT INTO VehicleNumber  (VehicleID, VehicleNumber)  
VALUES (seq_number.nextval, '75');

INSERT INTO VehicleNumber  (VehicleID, VehicleNumber)  
VALUES (seq_number.nextval, 'EK888');

INSERT INTO VehicleNumber  (VehicleID, VehicleNumber)  
VALUES (seq_number.nextval, '879');

INSERT INTO VehicleNumber  (VehicleID, VehicleNumber)  
VALUES (seq_number.nextval, 'SHUT154');

INSERT INTO VehicleNumber  (VehicleID, VehicleNumber)  
VALUES (seq_number.nextval, 'ES899');

INSERT INTO VehicleNumber  (VehicleID, VehicleNumber)  
VALUES (seq_number.nextval, '17568');

INSERT INTO VehicleNumber  (VehicleID, VehicleNumber)  
VALUES (seq_number.nextval, 'ES523');


CREATE SEQUENCE seq_vehicle  
MINVALUE 0  
START WITH 0  
INCREMENT BY 1  
CACHE 10;

INSERT INTO VehicleType  (VehicleTypeID, VehicleType, VehicleID)   
VALUES (seq_vehicle.nextval, 'Train', 100);

INSERT INTO VehicleType  (VehicleTypeID, VehicleType, VehicleID)   
VALUES (seq_vehicle.nextval, 'Bus', 101);

INSERT INTO VehicleType  (VehicleTypeID, VehicleType, VehicleID)   
VALUES (seq_vehicle.nextval, 'Train', 102);

INSERT INTO VehicleType  (VehicleTypeID, VehicleType, VehicleID)   
VALUES (seq_vehicle.nextval, 'Train', 103);

INSERT INTO VehicleType  (VehicleTypeID, VehicleType, VehicleID)   
VALUES (seq_vehicle.nextval, 'Bus', 104);

INSERT INTO VehicleType  (VehicleTypeID, VehicleType, VehicleID)   
VALUES (seq_vehicle.nextval, 'Train', 105);

INSERT INTO VehicleType  (VehicleTypeID, VehicleType, VehicleID)   
VALUES (seq_vehicle.nextval, 'Bus', 106);

INSERT INTO VehicleType  (VehicleTypeID, VehicleType, VehicleID)   
VALUES (seq_vehicle.nextval, 'Train', 107);



alter sequence seq_vehicle restart start with 0;

alter sequence seq_number restart start with 100;

INSERT INTO DepartureStationName (DEPARTID, DepName , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Vilnius train station', seq_number.nextval);

INSERT INTO DepartureStationName  (DEPARTID, DepName , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Kaunas bus station', seq_number.nextval);

INSERT INTO DepartureStationName  (DEPARTID, DepName , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Šiauliai train station', seq_number.nextval);

INSERT INTO DepartureStationName  (DEPARTID, DepName , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Klapėda train station', seq_number.nextval);

INSERT INTO DepartureStationName  (DEPARTID, DepName , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Vilnius bus station', seq_number.nextval);

INSERT INTO DepartureStationName  (DEPARTID, DepName , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Kaunas train station', seq_number.nextval);

INSERT INTO DepartureStationName  (DEPARTID, DepName , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Vilnius bus station', seq_number.nextval);

INSERT INTO DepartureStationName  (DEPARTID, DepName , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Vilnius train station', seq_number.nextval);



alter sequence seq_vehicle restart start with 0;

alter sequence seq_number restart start with 100;

INSERT INTO DepartureStationAddress (DEPARTUREADDRESSID, DepAddress , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Geležinkelio g. 16, Vilnius', seq_number.nextval);

INSERT INTO DepartureStationAddress (DEPARTUREADDRESSID, DepAddress , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Vytauto pr. 24, Kaunas', seq_number.nextval);

INSERT INTO DepartureStationAddress (DEPARTUREADDRESSID, DepAddress , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Dubijos g. 42A, Šiauliai', seq_number.nextval);

INSERT INTO DepartureStationAddress (DEPARTUREADDRESSID, DepAddress , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Priestočio g. 1, Klaipėda', seq_number.nextval);

INSERT INTO DepartureStationAddress (DEPARTUREADDRESSID,DepAddress , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Sodų g. 22, LT-03211 Vilnius', seq_number.nextval);

INSERT INTO DepartureStationAddress (DEPARTUREADDRESSID, DepAddress , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'M. K. Čiurlionio g. 16, Kaunas', seq_number.nextval);

INSERT INTO DepartureStationAddress (DEPARTUREADDRESSID, DepAddress , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Sodų g. 22, LT-03211 Vilnius', seq_number.nextval);

INSERT INTO DepartureStationAddress (DEPARTUREADDRESSID, DepAddress , VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Geležinkelio g. 16, Vilnius', seq_number.nextval);


alter sequence seq_vehicle restart start with 0;

alter sequence seq_number restart start with 100;

INSERT INTO ArrivalStationName  (ARRIVEID, ArrStationName, VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Šiauliai train station', seq_number.nextval);

INSERT INTO ArrivalStationName  (ARRIVEID, ArrStationName, VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Vilnius bus station', seq_number.nextval);

INSERT INTO ArrivalStationName  (ARRIVEID, ArrStationName, VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Vilnius train station', seq_number.nextval);

INSERT INTO ArrivalStationName  (ARRIVEID, ArrStationName, VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Vilnius train station', seq_number.nextval);

INSERT INTO ArrivalStationName  (ARRIVEID, ArrStationName, VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Kaunas bus station', seq_number.nextval);

INSERT INTO ArrivalStationName  (ARRIVEID, ArrStationName, VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Vilnius train station', seq_number.nextval);

INSERT INTO ArrivalStationName  (ARRIVEID, ArrStationName, VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Kaunas bus station', seq_number.nextval);

INSERT INTO ArrivalStationName  (ARRIVEID, ArrStationName, VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Klapėda train station', seq_number.nextval);


alter sequence seq_vehicle restart start with 0;

alter sequence seq_number restart start with 100;

INSERT INTO ArrivalStationAddress(ARRIVEADDRESSID, ArrivalAddress, VEHICLEID)  
VALUES (seq_vehicle.nextval, 'Dubijos g. 42A, Šiauliai', seq_number.nextval);

INSERT INTO ArrivalStationAddress(ARRIVEADDRESSID, ARRIVALADDRESS, VEHICLEID)   
VALUES (seq_vehicle.nextval, 'Sodų g. 22, LT-03211 Vilnius', seq_number.nextval);

INSERT INTO ArrivalStationAddress(ARRIVEADDRESSID, ARRIVALADDRESS, VEHICLEID)   
VALUES (seq_vehicle.nextval, 'Geležinkelio g. 16, Vilnius', seq_number.nextval);

INSERT INTO ArrivalStationAddress(ARRIVEADDRESSID, ARRIVALADDRESS, VEHICLEID)   
VALUES (seq_vehicle.nextval, 'Geležinkelio g. 16, Vilnius', seq_number.nextval);

INSERT INTO ArrivalStationAddress(ARRIVEADDRESSID, ARRIVALADDRESS, VEHICLEID)   
VALUES (seq_vehicle.nextval, 'Vytauto pr. 24, Kaunas', seq_number.nextval);

INSERT INTO ArrivalStationAddress(ARRIVEADDRESSID, ARRIVALADDRESS, VEHICLEID)   
VALUES (seq_vehicle.nextval, 'Geležinkelio g. 16, Vilnius', seq_number.nextval);

INSERT INTO ArrivalStationAddress(ARRIVEADDRESSID, ARRIVALADDRESS, VEHICLEID)   
VALUES (seq_vehicle.nextval, 'Vytauto pr. 24, Kaunas', seq_number.nextval);

INSERT INTO ArrivalStationAddress(ARRIVEADDRESSID, ARRIVALADDRESS, VEHICLEID)   
VALUES (seq_vehicle.nextval, 'Priestočio g. 1, Klaipėda', seq_number.nextval);

alter sequence seq_vehicle restart start with 0;

alter sequence seq_number restart start with 100;

INSERT INTO DEPARTURETIME(DEPARTURETIMEID, DepTime, VEHICLEID)  
VALUES (seq_vehicle.nextval, TIMESTAMP '2018-05-02 12:40:00', seq_number.nextval);

INSERT INTO DEPARTURETIME(DEPARTURETIMEID, DepTime , VEHICLEID)  
VALUES (seq_vehicle.nextval, TIMESTAMP '2018-05-04 23:52:00', seq_number.nextval);

INSERT INTO DEPARTURETIME(DEPARTURETIMEID, DepTime, VEHICLEID)  
VALUES (seq_vehicle.nextval,TIMESTAMP  '2018-05-08 06:34:00', seq_number.nextval);

INSERT INTO DEPARTURETIME(DEPARTURETIMEID, DepTime, VEHICLEID)  
VALUES (seq_vehicle.nextval, TIMESTAMP  '2018-05-10 14:14:00', seq_number.nextval);

INSERT INTO DEPARTURETIME(DEPARTURETIMEID, DepTime, VEHICLEID)  
VALUES (seq_vehicle.nextval, TIMESTAMP '2018-05-09 12:36:00', seq_number.nextval);

INSERT INTO DEPARTURETIME(DEPARTURETIMEID, DepTime,VEHICLEID)  
VALUES (seq_vehicle.nextval, TIMESTAMP '2018-05-29 17:01:00', seq_number.nextval);

INSERT INTO DEPARTURETIME(DEPARTURETIMEID, DepTime,VEHICLEID)  
VALUES (seq_vehicle.nextval, TIMESTAMP '2018-05-28 19:45:00', seq_number.nextval);

INSERT INTO DEPARTURETIME (DEPARTURETIMEID, DepTime, VEHICLEID)  
VALUES (seq_vehicle.nextval, TIMESTAMP '2018-05-25 10:03:00', seq_number.nextval);

alter sequence seq_vehicle restart start with 0;

alter sequence seq_number restart start with 100;

INSERT INTO ARRIVALTIME(ARRIVETIMEID, ArrvTime, VEHICLEID)  
VALUES (seq_vehicle.nextval, TIMESTAMP '2018-05-02 15:08:00', seq_number.nextval);

INSERT INTO ARRIVALTIME(ARRIVETIMEID, ArrvTime , VEHICLEID)  
VALUES (seq_vehicle.nextval, TIMESTAMP '2018-05-05 01:04:00', seq_number.nextval);

INSERT INTO ARRIVALTIME(ARRIVETIMEID, ArrvTime, VEHICLEID)  
VALUES (seq_vehicle.nextval,TIMESTAMP  '2018-05-08 09:36:00', seq_number.nextval);

INSERT INTO ARRIVALTIME(ARRIVETIMEID, ArrvTime, VEHICLEID)  
VALUES (seq_vehicle.nextval, TIMESTAMP  '2018-05-10 18:23:00', seq_number.nextval);

INSERT INTO ARRIVALTIME(ARRIVETIMEID, ArrvTime, VEHICLEID)  
VALUES (seq_vehicle.nextval, TIMESTAMP '2018-05-09 13:28:00', seq_number.nextval);

INSERT INTO ARRIVALTIME(ARRIVETIMEID, ArrvTime,VEHICLEID)  
VALUES (seq_vehicle.nextval, TIMESTAMP '2018-05-29 18:50:00', seq_number.nextval);

INSERT INTO ARRIVALTIME(ARRIVETIMEID, ArrvTime,VEHICLEID)  
VALUES (seq_vehicle.nextval, TIMESTAMP '2018-05-28 20:58:00', seq_number.nextval);

INSERT INTO ARRIVALTIME (ARRIVETIMEID, ArrvTime,VEHICLEID)  
VALUES (seq_vehicle.nextval, TIMESTAMP '2018-05-25 15:22:00', seq_number.nextval);


SELECT VEHICLENUMBER AS "Vehicle number", DEPNAME AS "Departure station name" , DEPADDRESS AS "Departure station address", ARRSTATIONNAME AS
"Arrival station name", ARRIVALADDRESS AS "Arrival station address",  extract(year  from DEPTIME) ||'-'|| 
lpad(extract(month  from ARRVTIME), 2, '0')  ||'-'|| extract(day  from DEPTIME) ||' '|| 
extract(hour  from DEPTIME) ||':'|| lpad(extract(minute  from DEPTIME), 2, '0') AS "Departure Time" , extract(year  from ARRVTIME) ||'-'||
lpad(extract(month  from ARRVTIME), 2, '0')  ||'-'|| extract(day  from ARRVTIME) ||' '|| extract(hour  from ARRVTIME) ||':'|| 
lpad(extract(minute  from ARRVTIME), 2, '0') AS "Arrival Time"
FROM VEHICLENUMBER
INNER JOIN DepartureStationName ON VEHICLENUMBER.VEHICLEID = DepartureStationName.VEHICLEID
INNER JOIN ArrivalStationAddress ON VEHICLENUMBER.VEHICLEID = ArrivalStationAddress.VEHICLEID
INNER JOIN DepartureStationAddress ON VEHICLENUMBER.VEHICLEID = DepartureStationAddress.VEHICLEID
INNER JOIN DEPARTURETIME ON VEHICLENUMBER.VEHICLEID = DEPARTURETIME.VEHICLEID
INNER JOIN ARRIVALSTATIONNAME ON VEHICLENUMBER.VEHICLEID = ARRIVALSTATIONNAME.VEHICLEID
INNER JOIN ARRIVALTIME ON VEHICLENUMBER.VEHICLEID = ARRIVALTIME.VEHICLEID;

SELECT VEHICLENUMBER AS "Vehicle number", DepName AS "Departure Station", ARRSTATIONNAME AS "Arrival Station", 
lpad(extract(hour  from arrvtime - deptime), 2, '0') ||':'|| lpad(extract(minute  from arrvtime - deptime), 2, '0') Duration  
FROM VEHICLENUMBER 
INNER JOIN DEPARTURESTATIONNAME ON VEHICLENUMBER.VEHICLEID = DEPARTURESTATIONNAME.VEHICLEID 
INNER JOIN ARRIVALSTATIONNAME ON VEHICLENUMBER.VEHICLEID = ARRIVALSTATIONNAME.VEHICLEID 
INNER JOIN ARRIVALTIME ON VEHICLENUMBER.VEHICLEID = ARRIVALTIME.VEHICLEID 
INNER JOIN DEPARTURETIME ON VEHICLENUMBER.VEHICLEID = DEPARTURETIME.VEHICLEID;

SELECT Count (DEPNAME) AS "Departures", DEPNAME AS "Departure Station"
FROM DEPARTURESTATIONNAME
WHERE DEPNAME = DEPNAME
GROUP BY DEPNAME
ORDER BY COUNT(DEPNAME) DESC;

SELECT VEHICLENUMBER AS "Vehicle number", DEPNAME AS "Departure station name" , DEPADDRESS AS "Departure station address", ARRSTATIONNAME AS
"Arrival station name", ARRIVALADDRESS AS "Arrival station address",  extract(year  from DEPTIME) ||'-'|| 
lpad(extract(month  from ARRVTIME), 2, '0')  ||'-'|| extract(day  from DEPTIME) ||' '|| 
extract(hour  from DEPTIME) ||':'|| lpad(extract(minute  from DEPTIME), 2, '0') AS "Departure Time" , extract(year  from ARRVTIME) ||'-'||
lpad(extract(month  from ARRVTIME), 2, '0')  ||'-'|| extract(day  from ARRVTIME) ||' '|| extract(hour  from ARRVTIME) ||':'|| 
lpad(extract(minute  from ARRVTIME), 2, '0') AS "Arrival Time"
FROM VEHICLENUMBER
INNER JOIN DepartureStationName ON VEHICLENUMBER.VEHICLEID = DepartureStationName.VEHICLEID
INNER JOIN ArrivalStationAddress ON VEHICLENUMBER.VEHICLEID = ArrivalStationAddress.VEHICLEID
INNER JOIN DepartureStationAddress ON VEHICLENUMBER.VEHICLEID = DepartureStationAddress.VEHICLEID
INNER JOIN DEPARTURETIME ON VEHICLENUMBER.VEHICLEID = DEPARTURETIME.VEHICLEID
INNER JOIN ARRIVALSTATIONNAME ON VEHICLENUMBER.VEHICLEID = ARRIVALSTATIONNAME.VEHICLEID
INNER JOIN ARRIVALTIME ON VEHICLENUMBER.VEHICLEID = ARRIVALTIME.VEHICLEID
WHERE DEPTIME >  TIMESTAMP '2018-05-25 00:00:00';

DELETE FROM VehicleNumber WHERE VehicleNumber = 'ES523';

SELECT Count(*) AS "Records of ES523"
FROM DepartureStationName 
WHERE VEHICLEID = (SELECT VEHICLEID FROM VEHICLENUMBER WHERE VEHICLENUMBER = 'ES523'); 

