/*=================================================================*/
  CREATE DATABASE "D:\TU\diplomna\application\databaseIB.gdb"
             user "SYSDBA"
         password "masterkey"
         page_size=4096;
/*=================================================================*/
CREATE GENERATOR ARTICLE_IDGEN;
SET GENERATOR ARTICLE_IDGEN TO 26;

CREATE GENERATOR ARTICLE_TYPE_IDGEN;
SET GENERATOR ARTICLE_TYPE_IDGEN TO 5;

CREATE GENERATOR CONTRACT_IDGEN;
SET GENERATOR CONTRACT_IDGEN TO 25;

CREATE GENERATOR CONTRACT_NUMBER_GEN;
SET GENERATOR CONTRACT_NUMBER_GEN TO 25;

CREATE GENERATOR CONTRAGENT_IDGEN;
SET GENERATOR CONTRAGENT_IDGEN TO 11;

CREATE GENERATOR DELIVERY_BODY_IDGEN;
SET GENERATOR DELIVERY_BODY_IDGEN TO 13;

CREATE GENERATOR DELIVERY_HEAD_IDGEN;
SET GENERATOR DELIVERY_HEAD_IDGEN TO 28;

CREATE GENERATOR DELIVERY_NUMBER_GEN;
SET GENERATOR DELIVERY_NUMBER_GEN TO 28;

CREATE GENERATOR INVOICE_BODY_IDGEN;
SET GENERATOR INVOICE_BODY_IDGEN TO 7;

CREATE GENERATOR INVOICE_HEAD_IDGEN;
SET GENERATOR INVOICE_HEAD_IDGEN TO 5;

CREATE GENERATOR INVOICE_NUMBER_GEN;
SET GENERATOR INVOICE_NUMBER_GEN TO 8;

CREATE GENERATOR MANUFACTURER_IDGEN;
SET GENERATOR MANUFACTURER_IDGEN TO 6;

CREATE GENERATOR ORDER_BODY_IDGEN;
SET GENERATOR ORDER_BODY_IDGEN TO 13;

CREATE GENERATOR ORDER_HEAD_IDGEN;
SET GENERATOR ORDER_HEAD_IDGEN TO 7;

CREATE GENERATOR ORDER_NUMBER_GEN;
SET GENERATOR ORDER_NUMBER_GEN TO 7;

CREATE GENERATOR POSITIONS_IDGEN;
SET GENERATOR POSITIONS_IDGEN TO 6;

CREATE GENERATOR PROTOCOL_BODY_IDGEN;
SET GENERATOR PROTOCOL_BODY_IDGEN TO 27;

CREATE GENERATOR PROTOCOL_HEAD_IDGEN;
SET GENERATOR PROTOCOL_HEAD_IDGEN TO 15;

CREATE GENERATOR PROTOCOL_NUMBER_GEN;
SET GENERATOR PROTOCOL_NUMBER_GEN TO 30;

CREATE GENERATOR SCHEDULE_IDGEN;
SET GENERATOR SCHEDULE_IDGEN TO 5;

CREATE GENERATOR SERVICE_IDGEN;
SET GENERATOR SERVICE_IDGEN TO 13;

CREATE GENERATOR STAFF_IDGEN;
SET GENERATOR STAFF_IDGEN TO 67;
/*=================================================================*/
CREATE TABLE POSITIONS (
    ID    INTEGER NOT NULL,
    NAME  VARCHAR(40),
	PRIMARY KEY (ID)
);

CREATE INDEX POSITIONSNAMENDX ON POSITIONS (NAME);
/*=================================================================*/
CREATE TABLE ARTICLE_TYPE (
    ID    INTEGER NOT NULL,
    NAME  VARCHAR(40),
	PRIMARY KEY (ID)
);

CREATE INDEX ARTICLETYPENAMENDX ON ARTICLE_TYPE (NAME);
/*=================================================================*/
CREATE TABLE MANUFACTURER (
    ID    INTEGER NOT NULL,
    NAME  VARCHAR(40),
	PRIMARY KEY (ID)
);

CREATE INDEX MANUFACTURERNAMENDX ON MANUFACTURER (NAME);
/*=================================================================*/
CREATE TABLE ARTICLE (
    ID           INTEGER NOT NULL,
    MODEL        VARCHAR(20) CHARACTER SET NONE,
    MANUFACT_ID  INTEGER,
    WARRANTY     INTEGER,
    TYPE_ID      INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (MANUFACT_ID) REFERENCES MANUFACTURER (ID),
	FOREIGN KEY (TYPE_ID) REFERENCES ARTICLE_TYPE (ID)
);

CREATE INDEX ARTICLEMODELNDX ON ARTICLE (MODEL);
/*=================================================================*/
CREATE TABLE SERVICE (
    ID        INTEGER NOT NULL,
    NAME      VARCHAR(200),
    PRICE     FLOAT,
    DURATION  FLOAT,
	PRIMARY KEY (ID)
);

CREATE INDEX SERVICENAMENDX ON SERVICE (NAME);
CREATE INDEX SERVICEPRICENDX ON SERVICE (PRICE);
/*=================================================================*/
CREATE TABLE STAFF (
    ID           INTEGER NOT NULL,
    FNAME        VARCHAR(50),
    LNAME        VARCHAR(50),
    SALARY       DECIMAL(15,2),
    POSITION_ID  INTEGER NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (POSITION_ID) REFERENCES POSITIONS (ID)
);

CREATE INDEX STAFFFNAMENDX ON STAFF (FNAME);
CREATE INDEX STAFFLNAMENDX ON STAFF (LNAME);
/*=================================================================*/
CREATE TABLE CONTRAGENT (
    ID         INTEGER NOT NULL,
    BULSTAT    INTEGER,
    NAME       VARCHAR(50),
    MOL        VARCHAR(50),
    ADDRESS    VARCHAR(80),
    CONTACT    VARCHAR(30),
    TELEPHONE  INTEGER,
    EMAIL      VARCHAR(30),
	PRIMARY KEY (ID)
);

CREATE INDEX CONTRAGENTEMAILNDX ON CONTRAGENT (EMAIL);
CREATE INDEX CONTRAGENTNAMENDX ON CONTRAGENT (NAME);
CREATE INDEX CONTRAGENTTELEPHONENDX ON CONTRAGENT (TELEPHONE);
/*=================================================================*/
CREATE TABLE CONTRACT (
    ID             INTEGER NOT NULL,
    TERM         INTEGER,
    DESCRIPTION    VARCHAR(1024),
    CONTRAGENT_ID  INTEGER,
    CONTR_DATE     DATE,
    CONTR_NR       INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (CONTRAGENT_ID) REFERENCES CONTRAGENT (ID)
);
/*=================================================================*/
CREATE TABLE ORDER_HEAD (
    ID             INTEGER NOT NULL,
    DESCRIPTION    VARCHAR(1024),
    ORDER_DATE     DATE,
    ORDER_NR       INTEGER,
    CONTRAGENT_ID  INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (CONTRAGENT_ID) REFERENCES CONTRAGENT (ID)
);

CREATE INDEX ORDERDATENDX ON ORDER_HEAD (ORDER_DATE);
CREATE INDEX ORDERNRNDX ON ORDER_HEAD (ORDER_NR);
/*=================================================================*/
CREATE TABLE ORDER_BODY (
    ID          INTEGER NOT NULL,
    QUANTITY    INTEGER,
    ARTICLE_ID  INTEGER,
    ORDERH_ID   INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (ORDERH_ID) REFERENCES ORDER_HEAD (ID),
	FOREIGN KEY (ARTICLE_ID) REFERENCES ARTICLE (ID)
);
/*=================================================================*/
CREATE TABLE DELIVERY_HEAD (
    ID          INTEGER NOT NULL,
    DELIV_DATE  DATE,
    DELIV_NR    INTEGER,
    ORDERH_ID   INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (ORDERH_ID) REFERENCES ORDER_HEAD (ID)
);

CREATE INDEX DELIVERYDATENDX ON DELIVERY_HEAD (DELIV_DATE);
CREATE INDEX DELIVERYNRNDX ON DELIVERY_HEAD (DELIV_NR);
/*=================================================================*/
CREATE TABLE DELIVERY_BODY (
    ID            INTEGER NOT NULL,
    PRICE         FLOAT,
    QUANTITY      INTEGER,
    ARTICLE_ID    INTEGER,
    DELIVERYH_ID  INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (DELIVERYH_ID) REFERENCES DELIVERY_HEAD (ID),
    FOREIGN KEY (ARTICLE_ID) REFERENCES ARTICLE (ID)
);
/*=================================================================*/
CREATE TABLE PROTOCOL_HEAD (
    ID             INTEGER NOT NULL,
    PROT_NR        INTEGER,
    PROT_DATE      DATE,
    DESCRIPTION    VARCHAR(100),
    CONTRAGENT_ID  INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (CONTRAGENT_ID) REFERENCES CONTRAGENT (ID)
);

CREATE INDEX PROTOCOLDATENDX ON PROTOCOL_HEAD (PROT_DATE);
CREATE INDEX PROTOCOLNRNDX ON PROTOCOL_HEAD (PROT_NR);
/*=================================================================*/
CREATE TABLE SCHEDULE (
    ID             INTEGER NOT NULL,
    SCHEDULE_DATE  DATE,
    DAYTIME        TIME,
    DESCRIPTION    VARCHAR(100),
    FLAG_AS        CHAR(1),
    STAFF_ID       INTEGER,
    ARTICLE_ID     INTEGER,
    SERVICE_ID     INTEGER,
    CONTRACT_ID    INTEGER,
    PROTOCOL_ID    INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (PROTOCOL_ID) REFERENCES PROTOCOL_HEAD (ID),
	FOREIGN KEY (STAFF_ID) REFERENCES STAFF (ID),
	FOREIGN KEY (SERVICE_ID) REFERENCES SERVICE (ID),
	FOREIGN KEY (ARTICLE_ID) REFERENCES ARTICLE (ID),
	FOREIGN KEY (CONTRACT_ID) REFERENCES CONTRACT (ID)
);

CREATE INDEX SCHEDULEDATENDX ON SCHEDULE (SCHEDULE_DATE);
/*=================================================================*/
CREATE TABLE PROTOCOL_BODY (
    ID            INTEGER NOT NULL,
    DESCRIPTION   VARCHAR(100),
    FLAG_AS       CHAR(1),
    PROTOCOLH_ID  INTEGER,
    SCHEDULE_ID   INTEGER,
    ARTICLE_ID    INTEGER,
    SERVICE_ID    INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (PROTOCOLH_ID) REFERENCES PROTOCOL_HEAD (ID),
	FOREIGN KEY (SCHEDULE_ID) REFERENCES SCHEDULE (ID),
	FOREIGN KEY (ARTICLE_ID) REFERENCES ARTICLE (ID),
	FOREIGN KEY (SERVICE_ID) REFERENCES SERVICE (ID)
);
/*=================================================================*/
CREATE TABLE INVOICE_HEAD (
    ID             INTEGER NOT NULL,
    INVOICE_DATE   DATE,
    INVOICE_NR     INTEGER,
    CONTRAGENT_ID  INTEGER,
    STAFF_ID       INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (CONTRAGENT_ID) REFERENCES CONTRAGENT (ID),
	FOREIGN KEY (STAFF_ID) REFERENCES STAFF (ID)
);

CREATE INDEX INVOICEDATENDX ON INVOICE_HEAD (INVOICE_DATE);
CREATE INDEX INVOICENRNDX ON INVOICE_HEAD (INVOICE_NR);
/*=================================================================*/
CREATE TABLE INVOICE_BODY (
    ID            INTEGER NOT NULL,
    PRICE         FLOAT,
    QUANTITY      INTEGER,
    FLAG_AS       INTEGER DEFAULT 0,
    ARTICLE_ID    INTEGER,
    SERVICE_ID    INTEGER,
    INVOICEH_ID   INTEGER,
    PROTOCOLB_ID  INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (ARTICLE_ID) REFERENCES ARTICLE (ID),
	FOREIGN KEY (SERVICE_ID) REFERENCES SERVICE (ID),
	FOREIGN KEY (INVOICEH_ID) REFERENCES INVOICE_HEAD (ID),
	FOREIGN KEY (PROTOCOLB_ID) REFERENCES PROTOCOL_BODY (ID)
);
/*=================================================================*/
SET TERM ^ ;

CREATE PROCEDURE ARTICLE_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(ARTICLE_IDGEN, 29);
END^

CREATE PROCEDURE CONTRACT_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(CONTRACT_IDGEN, 1);
END^

CREATE PROCEDURE CONTRAGENT_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(CONTRAGENT_IDGEN, 11);
END^

CREATE PROCEDURE DELIVERY_BODY_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(DELIVERY_BODY_IDGEN, 1);
END^

CREATE PROCEDURE DELIVERY_HEAD_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(DELIVERY_HEAD_IDGEN, 1);
END^

CREATE PROCEDURE GET_CONTRACT_NUMBER 
returns (
    number integer)
as
BEGIN
  NUMBER = GEN_ID(CONTRACT_NUMBER_GEN,1);
  SUSPEND;
END^

CREATE PROCEDURE GET_DELIVERY_NUMBER 
returns (
    number integer)
as
BEGIN
NUMBER = GEN_ID(DELIVERY_NUMBER_GEN, 1);
SUSPEND;
END^

CREATE PROCEDURE GET_INVOICE_NUMBER 
returns (
    number integer)
as
BEGIN
NUMBER = GEN_ID(INVOICE_NUMBER_GEN, 1);
SUSPEND;
END^


CREATE PROCEDURE GET_ORDER_NUMBER 
returns (
    number integer)
as
BEGIN
NUMBER = GEN_ID(ORDER_NUMBER_GEN, 1);
suspend;
END^

CREATE PROCEDURE GET_PROTOCOL_NUMBER 
returns (
    number integer)
as
BEGIN
NUMBER = GEN_ID(PROTOCOL_NUMBER_GEN, 1);
SUSPEND;
END^

CREATE PROCEDURE INVOICE_BODY_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(INVOICE_BODY_IDGEN, 1);
END^

CREATE PROCEDURE INVOICE_HEAD_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(INVOICE_HEAD_IDGEN, 1);
END^

CREATE PROCEDURE MANUFACTURER_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(MANUFACTURER_IDGEN, 7);
END^

CREATE PROCEDURE ORDER_BODY_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(ORDER_BODY_IDGEN, 1);
END^

CREATE PROCEDURE ORDER_HEAD_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(ORDER_HEAD_IDGEN, 1);
END^

CREATE PROCEDURE POSITIONS_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(POSITIONS_IDGEN, 6);
END^

CREATE PROCEDURE PROTOCOL_BODY_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(PROTOCOL_BODY_IDGEN, 1);
END^

CREATE PROCEDURE PROTOCOL_HEAD_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(PROTOCOL_HEAD_IDGEN, 1);
END^

CREATE PROCEDURE SCHEDULE_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(SCHEDULE_IDGEN, 1);
END^

CREATE PROCEDURE SERVICE_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(SERVICE_IDGEN, 1);
END^

CREATE PROCEDURE STAFF_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(STAFF_IDGEN, 9);
END^

CREATE PROCEDURE TYPE_IDSP 
returns (
    id integer)
as
BEGIN
ID = GEN_ID(ARTICLE_TYPE_IDGEN, 6);
END^

CREATE PROCEDURE GET_STOCK 
returns (article_id integer,article_name varchar(20) character set none,total integer)
as
declare variable qin integer;
declare variable qout integer;
BEGIN
  FOR SELECT ID, MODEL
        FROM ARTICLE
        ORDER BY MODEL
        INTO :ARTICLE_ID, :ARTICLE_NAME
  DO
   BEGIN
     SELECT SUM(QUANTITY) FROM DELIVERY_BODY WHERE ARTICLE_ID = :ARTICLE_ID INTO :QIN;
     SELECT SUM(QUANTITY) FROM INVOICE_BODY WHERE ARTICLE_ID = :ARTICLE_ID INTO :QOUT;
     IF(QIN IS NULL) THEN QIN = 0;
     IF(QOUT IS NULL) THEN QOUT = 0;
     TOTAL = :QIN - :QOUT;
     SUSPEND;
   END
end^

SET TERM ; ^

