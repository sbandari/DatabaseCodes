CONNECT SYSTEM;
DROP USER TEC5323 CASCADE;
CREATE USER TEC5323 IDENTIFIED BY FINALPRO;
GRANT DBA TO TEC5323;
CONNECT TEC5323/FINALPRO;

DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
CREATE TABLE CUSTOMER
(
 CUST_ID NUMBER(20),
 LAST VARCHAR2(50) CONSTRAINT LAST NOT NULL,
 FIRST VARCHAR2(50) CONSTRAINT FIRST NOT NULL,
 MI VARCHAR2(10),
 ADRESS VARCHAR2(200),
 CITY VARCHAR2(100),
 STATE VARCHAR2(50),
 ZIP VARCHAR2(20),
 D_PHONE number(20),
 E_PHONE number(20)
);
ALTER TABLE CUSTOMER  ADD CONSTRAINT PK_CUST_ID PRIMARY KEY(CUST_ID);
DROP TABLE CUST_ORDER CASCADE CONSTRAINTS;
CREATE TABLE CUST_ORDER
(
 ORDER_ID NUMBER(38),
 ORDER_DATE DATE DEFAULT SYSDATE NOT NULL,
 PAY_METHOD VARCHAR2(10),
 CUST_ID NUMBER(20) NOT NULL,
 ORDER_SOURCE_ID NUMBER(38)
);
ALTER TABLE CUST_ORDER ADD CONSTRAINT PK_ORDER_ID  PRIMARY KEY(ORDER_ID);
DROP TABLE ORDER_SOURCE CASCADE CONSTRAINTS;
CREATE TABLE ORDER_SOURCE
(
 ORDER_SOURCE_ID NUMBER(38),
 SOURCE_DESC VARCHAR2(50)
);
ALTER TABLE ORDER_SOURCE ADD CONSTRAINT PK_ORDER_SOURCE_ID PRIMARY KEY(ORDER_SOURCE_ID);
DROP TABLE ITEM CASCADE CONSTRAINTS;
CREATE TABLE ITEM
(
 ITEM_ID NUMBER(38),
 ITEM_DESC VARCHAR2(50),
 CATEGORY_ID NUMBER(38)
);
ALTER TABLE ITEM ADD CONSTRAINT PK_ITEM_ID PRIMARY KEY(ITEM_ID);
DROP TABLE CATEGORY CASCADE CONSTRAINTS;
CREATE TABLE CATEGORY
(
 CATEGORY_ID NUMBER(38), 
 CATEGORY_DESC VARCHAR2(50)
);
ALTER TABLE CATEGORY ADD CONSTRAINT PK_CATEGORY_ID PRIMARY KEY(CATEGORY_ID);
DROP TABLE INVENTORY CASCADE CONSTRAINTS;
CREATE TABLE INVENTORY 
(
 INV_ID NUMBER(38),
 ITEM_ID NUMBER(38),
 ITEM_SIZE VARCHAR2(50),
 COLOR VARCHAR2(50) NOT NULL,
 PRICE NUMBER(38) NOT NULL,
 QOH NUMBER(38) NOT NULL
);
ALTER TABLE INVENTORY ADD CONSTRAINT PK_INV_ID PRIMARY KEY(INV_ID);
DROP TABLE SHIPMENT CASCADE CONSTRAINTS;
CREATE TABLE SHIPMENT
(
 SHIP_ID NUMBER(38),
 DATE_EXPECTED DATE NOT NULL
);
ALTER TABLE SHIPMENT ADD CONSTRAINT PK_SHIP_ID PRIMARY KEY(SHIP_ID);
DROP TABLE SHIP_LINE CASCADE CONSTRAINTS;

CREATE TABLE SHIP_LINE
(
 SHIP_ID NUMBER(38),
 INV_ID NUMBER(38),
 SHIP_QUANTITY NUMBER(38) NOT NULL,
 DATE_RECD DATE
);
DROP TABLE ORDER_LINE CASCADE CONSTRAINTS;
CREATE TABLE ORDER_LINE
(
 ORDER_ID NUMBER(38),
 INV_ID NUMBER(38),
 ORDER_QUANTITY NUMBER(38) NOT NULL
);
DROP TABLE COLOR CASCADE CONSTRAINTS;
CREATE TABLE COLOR
( 
 COLOR VARCHAR2(50)
);
ALTER TABLE COLOR ADD CONSTRAINT PK_COLOR PRIMARY KEY(COLOR);




ALTER TABLE CUST_ORDER ADD CONSTRAINT FK_CUST_ID FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER(CUST_ID);
ALTER TABLE CUST_ORDER ADD CONSTRAINT FK_ORDER_SOURCE_ID FOREIGN KEY (ORDER_SOURCE_ID) REFERENCES ORDER_SOURCE(ORDER_SOURCE_ID);
ALTER TABLE ITEM ADD CONSTRAINT FK_CATEGORY_ID FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORY (CATEGORY_ID);
ALTER TABLE INVENTORY ADD CONSTRAINT FK_ITEM_ID FOREIGN KEY (ITEM_ID) REFERENCES ITEM (ITEM_ID);
ALTER TABLE SHIP_LINE ADD CONSTRAINT FK_SHIP_ID FOREIGN KEY (SHIP_ID) REFERENCES SHIPMENT(SHIP_ID);
ALTER TABLE SHIP_LINE ADD CONSTRAINT FK_INV_ID FOREIGN KEY (INV_ID) REFERENCES INVENTORY(INV_ID);
ALTER TABLE ORDER_LINE ADD CONSTRAINT FK_ORDER_ID FOREIGN KEY (ORDER_ID) REFERENCES CUST_ORDER(ORDER_ID);
ALTER TABLE ORDER_LINE ADD CONSTRAINT FK2_INV_ID  FOREIGN KEY (INV_ID) REFERENCES INVENTORY(INV_ID);



INSERT INTO CUSTOMER VALUES(107,'Harris','Puala','E','1156 Jefferson Ave','Charleston','IL','61920','2175812223','2173480022');
INSERT INTO CUSTOMER VALUES(232,'Edward','Mich','M','4204 Grant Street','Mattoon','IL','61938','2172355537','2173482322');
INSERT INTO CUSTOMER VALUES(133,'Carcia','Maria','H','2211 Oak Lane','Champaign','IL','61821','2173334589','2172448973');
INSERT INTO CUSTOMER VALUES(154,'Miller','Reggie','','699 Pruto St','Urbana','IL','61801','2175816645','2172337654');
INSERT INTO CUSTOMER VALUES(179,'Woods','Tigerlet','','987 Durham Road','Tilton','IL','61833','2173350045','2175452376');

INSERT INTO ORDER_SOURCE VALUES(1,'WINTER 2011');
INSERT INTO ORDER_SOURCE VALUES(2,'SPRING 2012');
INSERT INTO ORDER_SOURCE VALUES(3,'SUMMER 2016');
INSERT INTO ORDER_SOURCE VALUES(4,'OUTDOOR 2016');
INSERT INTO ORDER_SOURCE VALUES(5,'CHILDREN 2016');
INSERT INTO ORDER_SOURCE VALUES(6,'WEB SITE');

INSERT INTO CUST_ORDER VALUES(1057,TO_DATE('05/29/2001','MM/DD/YYYY'),'CC',107,2);
INSERT INTO CUST_ORDER VALUES(1058,TO_DATE('05/29/2001','MM/DD/YYYY'),'CC',232,6);
INSERT INTO CUST_ORDER VALUES(1059,TO_DATE('06/10/2001','MM/DD/YYYY'),'CHECK',133,2);
INSERT INTO CUST_ORDER VALUES(1060,TO_DATE('06/21/2001','MM/DD/YYYY'),'CC',154,3);
INSERT INTO CUST_ORDER VALUES(1061,TO_DATE('06/30/2001','MM/DD/YYYY'),'CC',179,6);
INSERT INTO CUST_ORDER VALUES(1062,TO_DATE('07/01/2001','MM/DD/YYYY'),'CC',179,3);



INSERT INTO CATEGORY VALUES(1,'WOMEN''S CLOTHING');
INSERT INTO CATEGORY VALUES(2,'CHILDREN''S CLOTHING');
INSERT INTO CATEGORY VALUES(3,'MEN''S CLOTHING');
INSERT INTO CATEGORY VALUES(4,'OUTDOOR GEAR');

INSERT INTO ITEM VALUES(894,'WOMEN''S HIKING SHORTS',1);
INSERT INTO ITEM VALUES(897,'WOMEN''S FLEECE PULLOVER',1);
INSERT INTO ITEM VALUES(995,'CHILDREN''S BEACHCOMBER SANDALS',2);
INSERT INTO ITEM VALUES(559,'MEN''S EXPEDITION PARKA',3);
INSERT INTO ITEM VALUES(786,'3-SEASON TENT',4);



INSERT INTO INVENTORY VALUES(11668,786,NULL,'SKY BLUE',259.99,16);
INSERT INTO INVENTORY VALUES(11669,786,NULL,'LIGHT GREY',259.99,12);
INSERT INTO INVENTORY VALUES(11775,894,'S','KHAKI',29.95,150);
INSERT INTO INVENTORY VALUES(11776,894,'M','KHAKI',29,147);
INSERT INTO INVENTORY VALUES(11777,894,'L','KHAKI',29.95,0);
INSERT INTO INVENTORY VALUES(11778,894,'S','NAVY',29.95,139);
INSERT INTO INVENTORY VALUES(11779,894,'M','NAVY',29.95,137);
INSERT INTO INVENTORY VALUES(11780,894,'L','NAVY',29.95,115); 
INSERT INTO INVENTORY VALUES(11795,897,'S','EGGPLANT',59.95,135);
INSERT INTO INVENTORY VALUES(11796,897,'M','EGGPLANT',59.95,168);
INSERT INTO INVENTORY VALUES(11797,897,'L','EGGPLANT',59.95,187);
INSERT INTO INVENTORY VALUES(11798,897,'S','ROYAL',59,0);
INSERT INTO INVENTORY VALUES(11799,897,'M','ROYAL',59.95,124);
INSERT INTO INVENTORY VALUES(11800,897,'L','ROYAL',59.95,112);
INSERT INTO INVENTORY VALUES(11820,995,10,'TURQUOISE',15.99,121);
INSERT INTO INVENTORY VALUES(11821,995,11,'TURQUOISE',15.99,111);
INSERT INTO INVENTORY VALUES(11822,995,12,'TURQUOISE',15.99,113);
INSERT INTO INVENTORY VALUES(11823,995,1,'TURQUOISE',15.99,121);
INSERT INTO INVENTORY VALUES(11824,995,10,'BRIGHT PINK',15.99,148);
INSERT INTO INVENTORY VALUES(11825,995,11,'BRIGHT PINK',15.99,137);
INSERT INTO INVENTORY VALUES(11826,995,12,'BRIGHT PINK',15.99,134);
INSERT INTO INVENTORY VALUES(11827,995,1,'BRIGHT PINK',15.99,123);
INSERT INTO INVENTORY VALUES(11845,559,'S','SPRUCE',199.95,114);
INSERT INTO INVENTORY VALUES(11846,559,'M','SPRUCE',199.95,17);
INSERT INTO INVENTORY VALUES(11847,559,'L','SPRUCE',209.95,0);
INSERT INTO INVENTORY VALUES(11848,559,'XL','SPRUCE',209.95,12);

INSERT INTO ORDER_LINE VALUES(1057,11668,1);
INSERT INTO ORDER_LINE VALUES(1057,11800,2);
INSERT INTO ORDER_LINE VALUES(1058,11824,1);
INSERT INTO ORDER_LINE VALUES(1059,11846,1);
INSERT INTO ORDER_LINE VALUES(1060,11798,2);
INSERT INTO ORDER_LINE VALUES(1061,11779,1);
INSERT INTO ORDER_LINE VALUES(1061,11780,1);
INSERT INTO ORDER_LINE VALUES(1062,11799,1);
INSERT INTO ORDER_LINE VALUES(1062,11669,3);

INSERT INTO SHIPMENT VALUES(211,TO_DATE('09/05/2016','MM/DD/YYYY')); 
INSERT INTO SHIPMENT VALUES(212,TO_DATE('12/15/2016','MM/DD/YYYY'));
INSERT INTO SHIPMENT VALUES(213,TO_DATE('12/28/2016','MM/DD/YYYY'));
INSERT INTO SHIPMENT VALUES(214,TO_DATE('08/15/2016','MM/DD/YYYY'));
INSERT INTO SHIPMENT VALUES(215,TO_DATE('08/15/2016','MM/DD/YYYY'));

INSERT INTO SHIP_LINE VALUES(211,11668,25,TO_DATE('09/10/2016','MM/DD/YYYY'));
INSERT INTO SHIP_LINE VALUES(211,11669,25,TO_DATE('09/10/2016','MM/DD/YYYY'));
INSERT INTO SHIP_LINE VALUES(212,11669,25,NULL);
INSERT INTO SHIP_LINE VALUES(213,11777,200,NULL);
INSERT INTO SHIP_LINE VALUES(213,11778,200,NULL);
INSERT INTO SHIP_LINE VALUES(213,11779,200,NULL);
INSERT INTO SHIP_LINE VALUES(214,11798,100,TO_DATE('08/15/2016','MM/DD/YYYY'));
INSERT INTO SHIP_LINE VALUES(214,11799,100,TO_DATE('08/25/2016','MM/DD/YYYY'));
INSERT INTO SHIP_LINE VALUES(215,11845,50,TO_DATE('08/15/2016','MM/DD/YYYY'));
INSERT INTO SHIP_LINE VALUES(215,11846,100,TO_DATE('08/15/2016','MM/DD/YYYY'));
INSERT INTO SHIP_LINE VALUES(215,11847,100,TO_DATE('08/15/2016','MM/DD/YYYY'));






INSERT INTO COLOR VALUES('SKYBLUE');
INSERT INTO COLOR VALUES('LIGHT GREY');
INSERT INTO COLOR VALUES('KHAKI');
INSERT INTO COLOR VALUES('NAVY');
INSERT INTO COLOR VALUES('ROYAL');
INSERT INTO COLOR VALUES('EGGPLANT');
INSERT INTO COLOR VALUES('BLUE');
INSERT INTO COLOR VALUES('RED');
INSERT INTO COLOR VALUES('SPRUCE');
INSERT INTO COLOR VALUES('TURQUOISE');
INSERT INTO COLOR VALUES('BRIGHT PINK');





SELECT SHIP_LINE.SHIP_ID,
  SHIP_LINE.SHIP_QUANTITY,
  ITEM.ITEM_DESC,
  INVENTORY.ITEM_ID,
  INVENTORY.COLOR,
  SHIPMENT.DATE_EXPECTED,
  SHIP_LINE.SHIP_QUANTITY * INVENTORY.PRICE AS total_cost
FROM SHIP_LINE
INNER JOIN INVENTORY
ON INVENTORY.INV_ID = SHIP_LINE.INV_ID
INNER JOIN ITEM
ON ITEM.ITEM_ID = INVENTORY.ITEM_ID
INNER JOIN SHIPMENT
ON SHIPMENT.SHIP_ID        = SHIP_LINE.SHIP_ID
WHERE SHIP_LINE.DATE_RECD IS NULL;


