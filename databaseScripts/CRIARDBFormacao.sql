
USE Academia

CREATE TABLE Customers (
    Id int NOT NULL PRIMARY KEY,
    NIF INT NOT NULL ,
    Title VARCHAR(255),
    DocumentType VARCHAR(255),
    Street VARCHAR(255),
    Neighbourhood VARCHAR(255),
    City VARCHAR(255),
    MobileNumber VARCHAR(255),
    Email VARCHAR(255) NOT NULL,
    ClientType VARCHAR(255),
    Name VARCHAR(255) NOT NULL,
    DocumentNumber VARCHAR(255),
    Municipality VARCHAR(255),
    Province VARCHAR(255),
    PhoneNumber VARCHAR(255),
    Picture VARBINARY(MAX) NULL,
	Password VARCHAR(255) NOT NULL,
	Birthdate DATE NOT NULL
);

ALTER TABLE Customers
ADD CONSTRAINT Email UNIQUE (Email);


CREATE TABLE Insurances(
	 Id int  NOT NULL PRIMARY KEY,
	 Type VARCHAR(75)  NOT NULL,
	 InsuranceHolder int  NOT NULL REFERENCES Customers(id),
	 PaymentMethod VARCHAR(75)  NOT NULL,
	 Frequency VARCHAR(10)  NOT NULL,
	 StartDate DATE NOT NULL,
	 EndDate DATE NOT NULL,
	 Status BIT NOT NULL,
	 Cost DECIMAL(10,2) NOT NULL
)

CREATE TABLE Actions(
	CustomerID int NOT NULL REFERENCES Customers(Id),
	InsuranceID int NOT NULL REFERENCES Insurances(Id),
	UpdateDate DATETIME NOT NULL,
	Title VARCHAR(75) NOT NULL,
	Content VARCHAR(125) NOT NULL
	PRIMARY KEY (CustomerID,InsuranceID,UpdateDate)
)