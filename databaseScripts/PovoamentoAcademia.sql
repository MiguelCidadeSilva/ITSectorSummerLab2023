USE Academia

-- Inserting sample data into the Customers table
INSERT INTO Customers (Id, NIF, Title, DocumentType, Street, Neighbourhood, City, MobileNumber, Email, ClientType, Name, DocumentNumber, Municipality, Province, PhoneNumber, Picture, Password, Birthdate)
VALUES
    (1, 123456789, 'Mr', 'Passport', '123 Main St', 'Central', 'Cityville', '+123456789', 'customer1@example.com', 'Regular', 'John Doe', 'ABC123', 'City A', 'Province X', '+987654321', NULL, 'password1', '1985-06-15'),
    (2, 987654321, 'Ms', 'ID Card', '456 Elm St', 'Suburbia', 'Townville', '+987654321', 'customer2@example.com', 'Premium', 'Jane Smith', 'DEF456', 'City B', 'Province Y', '+123456789', NULL, 'password2', '1990-09-28'),
    (3, 456789123, 'Mr', 'Driver License', '789 Oak St', 'Downtown', 'Villageton', '+987654321', 'customer3@example.com', 'Regular', 'Robert Johnson', 'GHI789', 'City C', 'Province Z', '+123456789', NULL, 'password3', '1982-12-10'),
    (4, 789123456, 'Ms', 'ID Card', '321 Pine St', 'Suburbia', 'Townville', '+123456789', 'customer4@example.com', 'Premium', 'Sarah Davis', 'JKL012', 'City A', 'Province X', '+987654321', NULL, 'password4', '1995-03-21'),
    (5, 654321987, 'Mr', 'Passport', '654 Cedar St', 'Central', 'Cityville', '+987654321', 'customer5@example.com', 'Regular', 'Michael Thompson', 'MNO345', 'City B', 'Province Y', '+123456789', NULL, 'password5', '1988-07-02');

-- Inserting sample data into the Insurance table
INSERT INTO Insurances (Id, Type, InsuranceHolder, PaymentMethod, Frequency, StartDate, EndDate,Cost,Status)
VALUES
    (1, 'Health Insurance', 1, 'Credit Card', 'Monthly', '2023-01-01', '2023-12-31',122.00,0),
    (2, 'Car Insurance', 2, 'Bank Transfer', 'Yearly', '2023-06-01', '2024-05-31',1000.00,0),
    (3, 'Home Insurance', 3, 'Credit Card', 'Monthly', '2023-03-15', '2024-03-14',69.70,0),
    (4, 'Life Insurance', 4, 'Bank Transfer', 'Yearly', '2023-04-01', '2024-03-31',81.94,0),
    (5, 'Travel Insurance', 5, 'Credit Card', 'Monthly', '2023-07-01', '2024-06-30',888.73,0);

INSERT INTO Actions (CustomerID, InsuranceID, UpdateDate, Title, Content)
VALUES
    (1, 1, '2023-07-05 09:30:00', 'Action1','Added health insurance policy.');
