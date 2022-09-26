CREATE TABLE Fees (
    Fees_ID int,
    Late_Fee int,
    Damage_Fee int,
    Rewind_Fee int,
    Tax int,
    
    CONSTRAINT PK_Fees_ID PRIMARY KEY (Fees_ID)
);


SELECT * FROM Fees;

INSERT INTO Fees (Fees_ID, Late_Fee, Damage_Fee, Rewind_Fee, Tax)
VALUES (123, 10, 20, 5, 7);

INSERT INTO Fees (Fees_ID, Late_Fee, Damage_Fee, Rewind_Fee, Tax)
VALUES (213, 10, 20, 5, 7);

INSERT INTO Fees (Fees_ID, Late_Fee, Damage_Fee, Rewind_Fee, Tax)
VALUES (321, 10, 20, 5, 7);

INSERT INTO Fees (Fees_ID, Late_Fee, Damage_Fee, Rewind_Fee, Tax)
VALUES (456, 10, 20, 5, 7);

INSERT INTO Fees (Fees_ID, Late_Fee, Damage_Fee, Rewind_Fee, Tax)
VALUES (546, 10, 20, 5, 7);

CREATE TABLE Customer (
    Customer_ID int,
    Customer_Name char(40),
    Customer_Address varchar(40),
    Customer_Contact int,

    CONSTRAINT Customer_PK PRIMARY KEY (Customer_ID)
    
);


SELECT * FROM Customer;

INSERT INTO Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Contact)
VALUES (721, 'John', '123 example dr something state 31328', 0001112233);

INSERT INTO Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Contact)
VALUES (321, 'Adam', '452 who st that state 43262', 0001113344);

INSERT INTO Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Contact)
VALUES (435, 'Sarah', '744 where dr cool state 65437', 0001114455);

INSERT INTO Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Contact)
VALUES (653, 'Emily', '984 Wood st Apple Virgina 98645', 0001115566);

INSERT INTO Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Contact)
VALUES (984, 'Sean', '572 Lakeshore Dr Irving Texas 74298', 0001116677);

CREATE TABLE Distributors (
    Distributor_ID int,
    Distributor_Name char(40),
    Distributor_Address varchar(50),
    Distributor_Contact_Number int,
    
    CONSTRAINT Distributor_PK PRIMARY KEY (Distributor_ID)
    
);


SELECT * FROM Distributors;

INSERT INTO Distributors (Distributor_ID, Distributor_Name, Distributor_Address, Distributor_Contact_Number)
VALUES (753, 'Wizard Shows', '876 Idea Dr Lancaster CA', 1112223344);

INSERT INTO Distributors (Distributor_ID, Distributor_Name, Distributor_Address, Distributor_Contact_Number)
VALUES (153, 'Titan Films', '628 Yellow RD Gorda AZ', 1112224455);

INSERT INTO Distributors (Distributor_ID, Distributor_Name, Distributor_Address, Distributor_Contact_Number)
VALUES (325, 'Tunip Productions', '888 Sunflower STR Summerside MD', 1112225566);

INSERT INTO Distributors (Distributor_ID, Distributor_Name, Distributor_Address, Distributor_Contact_Number)
VALUES (972, 'Discord Films', '751 Dawn DR Diamond PA' , 1112226677);

INSERT INTO Distributors (Distributor_ID, Distributor_Name, Distributor_Address, Distributor_Contact_Number)
VALUES (853, 'Awesome Movies', '342 Lakeview RD Lemon LA', 1112227788);

CREATE TABLE Store (
    Store_ID int,
    Customer_ID int CONSTRAINT Store_FK REFERENCES Customer (Customer_ID),
    Distributor_ID int CONSTRAINT Distributor_FK REFERENCES Distributors (Distributor_ID),
    Store_Name char(40),
    Store_Address varchar(40),
    Store_Contact int,
    
CONSTRAINT Store_PK PRIMARY KEY (Store_ID)
   
);


SELECT * FROM Store;

INSERT INTO Store (Store_ID, Customer_ID, Distributor_ID, Store_Name, Store_Address, Store_Contact)
VALUES (968, 721, 753, 'Mom_and_Pop', '2001 Strawberry Lane Oceanview FL', 2223334455);

INSERT INTO Store (Store_ID, Customer_ID, Distributor_ID, Store_Name, Store_Address, Store_Contact)
VALUES (716, 321, 153, 'Mom_and_Pop', '2001 Strawberry Lane Oceanview FL', 2223335566);

INSERT INTO Store (Store_ID, Customer_ID, Distributor_ID, Store_Name, Store_Address, Store_Contact)
VALUES (836, 435, 325, 'Mom_and_Pop', '2001 Strawberry Lane Oceanview FL', 2223336677);

INSERT INTO Store (Store_ID, Customer_ID, Distributor_ID, Store_Name, Store_Address, Store_Contact)
VALUES (541, 653, 972, 'Mom_and_Pop', '2001 Strawberry Lane Oceanview FL', 2223337788);

INSERT INTO Store (Store_ID, Customer_ID, Distributor_ID, Store_Name, Store_Address, Store_Contact)
VALUES (916, 984, 853, 'Mom_and_Pop', '2001 Strawberry Lane Oceanview FL' , 2223338899);

CREATE TABLE Movie_Format (
    VHS_ID int,
    DVD_ID int,
    Movie_ID int,
    Copy_Number int,
    
CONSTRAINT Movie_Copy_PK PRIMARY KEY (Copy_Number)
   
);


SELECT * FROM Movie_Format;

INSERT INTO Movie_Format (VHS_ID, DVD_ID, Movie_ID, Copy_Number)
VALUES (029, 102, 201, 0);

INSERT INTO Movie_Format (VHS_ID, DVD_ID, Movie_ID, Copy_Number)
VALUES (041, 101, 202, 1);

INSERT INTO Movie_Format (VHS_ID, DVD_ID, Movie_ID, Copy_Number)
VALUES (052, 103, 203, 2);

INSERT INTO Movie_Format (VHS_ID, DVD_ID, Movie_ID, Copy_Number)
VALUES (097, 104, 204, 3);

INSERT INTO Movie_Format (VHS_ID, DVD_ID, Movie_ID, Copy_Number)
VALUES (023, 105, 205, 4);

CREATE TABLE Movies_List (
    Movie_ID int,
    Movie_Name varchar(50),
    Movie_Type char(20),
    Actor char(40),
    Actress char(40),
    Director char(40),
    Rating char(4),
    Awards varchar(40),
    Release_Year char(4),
    DVD_ID int,
    VHS_ID int,
    Copy_No int CONSTRAINT Movie_Copy_FK REFERENCES Movie_Format (Copy_No),
       
    CONSTRAINT Movie_ID_PK PRIMARY KEY (Movie_ID)

);
      



SELECT * FROM Movies_List;

INSERT INTO Movies_List (Movie_ID, Movie_Name, Movie_Type, Actor, Actress, Director, Rating, Awards, Release_Year, DVD_ID, VHS_ID, Copy_No)
VALUES (201, 'Movie1', 'Comedy', 'Jim Johnson', 'Susan Sally', 'Michael Shoepickle', 5 , 'Best Comedy', 2001, 102, 029, 0);

INSERT INTO Movies_List (Movie_ID, Movie_Name, Movie_Type, Actor, Actress, Director, Rating, Awards, Release_Year, DVD_ID, VHS_ID, Copy_No)
VALUES (202, 'Movie2', 'Romance', 'Samuel Sam', 'Megan Margrett', 'Miranda Shoepickle', 1 , 'Best Romance', 1998, 101, 041, 1);

INSERT INTO Movies_List (Movie_ID, Movie_Name, Movie_Type, Actor, Actress, Director, Rating, Awards, Release_Year, DVD_ID, VHS_ID, Copy_No)
VALUES (203, 'Movie3', 'Action', 'Bob Bobman', 'Elana Ellenson', 'Taylor Rover', 3 , 'Best Action', 2011, 103, 052, 2);

INSERT INTO Movies_List (Movie_ID, Movie_Name, Movie_Type, Actor, Actress, Director, Rating, Awards, Release_Year, DVD_ID, VHS_ID, Copy_No)
VALUES (204, 'Movie4', 'Mystery', 'Kyle Kyleson', 'Maria Mapleson', 'Jenny Jameson', 4 , 'Best Mystery', 2019, 104, 097, 3);

INSERT INTO Movies_List (Movie_ID, Movie_Name, Movie_Type, Actor, Actress, Director, Rating, Awards, Release_Year, DVD_ID, VHS_ID, Copy_No)
VALUES (205, 'Movie5', 'Thriller', 'Osar Oscarson', 'Liz Lizenson', 'Cooper Cooperson', 2 , 'Best Thriller', 2022, 105, 023, 4);


CREATE TABLE Catalog (
    Catalog_ID int,
    Movie_ID int CONSTRAINT Movie_ID_FK REFERENCES Movies_List (Movie_ID),
    Store_ID int CONSTRAINT Store_ID_FK REFERENCES Store (Store_ID),
    Distributor_ID int CONSTRAINT Distributor_ID_FK REFERENCES Distributors (Distributor_ID),
    
    CONSTRAINT CATALOG_ID_PK PRIMARY KEY (Catalog_ID)

    
);


SELECT * FROM Catalog;

INSERT INTO Catalog (Catalog_ID, Movie_ID, Store_ID, Distributor_ID)
VALUES (453, 201, 968, 753);

INSERT INTO Catalog (Catalog_ID, Movie_ID, Store_ID, Distributor_ID)
VALUES (546, 202, 716, 153);

INSERT INTO Catalog (Catalog_ID, Movie_ID, Store_ID, Distributor_ID)
VALUES (962, 203, 836, 325);

INSERT INTO Catalog (Catalog_ID, Movie_ID, Store_ID, Distributor_ID)
VALUES (583, 204, 541, 972);

INSERT INTO Catalog (Catalog_ID, Movie_ID, Store_ID, Distributor_ID)
VALUES (528, 205, 916, 853);

CREATE TABLE Transaction_Fees (
    Fees_ID int CONSTRAINT Fees_ID_FK REFERENCES Fees (Fees_ID),
    DVD_Fee int,
    VHS_Fee int,
    CONSTRAINT DVD_Fee_PK PRIMARY KEY (DVD_Fee)  
);

SELECT * FROM Transaction_Fees;

INSERT INTO Transaction_Fees (Fees_ID, DVD_Fee, VHS_Fee)
VALUES (123, 326, 108);

INSERT INTO Transaction_Fees (Fees_ID, DVD_Fee, VHS_Fee)
VALUES (213, 543,107);

INSERT INTO Transaction_Fees (Fees_ID, DVD_Fee, VHS_Fee)
VALUES (321, 783,104);

INSERT INTO Transaction_Fees (Fees_ID, DVD_Fee, VHS_Fee)
VALUES (456, 619,629);

INSERT INTO Transaction_Fees (Fees_ID, DVD_Fee, VHS_Fee)
VALUES (546, 846,428);

CREATE TABLE Record_Report (
    Fees_ID int CONSTRAINT Fees_ID_FKs REFERENCES Fees (Fees_ID), 
    Date_Rented varchar(40),
    Date_Returned varchar(40),
    CONSTRAINT Date_Rented_PK PRIMARY KEY (Date_Rented)
    
);

SELECT * FROM Record_Report;

INSERT INTO Record_Report (Fees_ID, Date_Rented, Date_Returned)
VALUES (123, 06/26/2022, 06/25/2022);

INSERT INTO Record_Report (Fees_ID, Date_Rented, Date_Returned)
VALUES (213, 06/21/2022, 06/22/2022);

INSERT INTO Record_Report (Fees_ID, Date_Rented, Date_Returned)
VALUES (321, 05/19/2022, 05/23/2022);

INSERT INTO Record_Report (Fees_ID, Date_Rented, Date_Returned)
VALUES (456, 03/15/2022, 03/17/2022);

INSERT INTO Record_Report (Fees_ID, Date_Rented, Date_Returned)
VALUES (546, 01/12/2022, 01/18/2022)