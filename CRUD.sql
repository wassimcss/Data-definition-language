--insertion into Product table
INSERT INTO Product VALUES 
('P01','Samsung Glaxy S20','smartphone',3299);
INSERT INTO Product VALUES 
('P02','ASUS Notebok','PC',4599);

--insertion into Customer table
INSERT INTO Customer VALUES 
('C01','ALI',71321009);
INSERT INTO Customer VALUES 
('C02','ASSMA',77345328);

--insertion into Orders table
INSERT INTO Orders (customer_id, product_id, quantity, total_amount) VALUES 
('C01','P02',2,9198);

INSERT INTO Orders VALUES 
('C02','P01',"28/05/2020",1,3299);