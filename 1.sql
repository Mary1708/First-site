CREATE TABLE cakes (
id_cake INTEGER PRIMARY KEY,
name TEXT,
image1 BLOB, 
image2 BLOB, 
price REAL, 
description TEXT
);
CREATE TABLE clients (
id_client INTEGER PRIMARY KEY,
name TEXT,
torder INTEGER,
birth TEXT,
regist TEXT,
tel TEXT,
FOREIGN KEY (torder) REFERENCES orders(id_order)
);
CREATE TABLE orders (
id_order INTEGER PRIMARY KEY,
id_client INTEGER,
id_cake INTEGER,
data TEXT,
val TEXT,
address TEXT,
FOREIGN KEY (id_client) REFERENCES clients(id_client),
FOREIGN KEY (id_cake) REFERENCES cakes(id_cake)
);