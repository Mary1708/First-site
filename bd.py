import sqlite3

name = 'base.db'
db = sqlite3.connect(name)

cur = db.cursor()
cakes = ('''
CREATE TABLE "cakes" (
id_cake INTEGER PRIMARY KEY, name TEXT, image1 BLOB, image2 BLOB, price REAL, description TEXT
)''')
cur.execute(cakes)
db.commit()
clients = ('''
CREATE TABLE "clients" (
id_client INTEGER PRIMARY KEY, name TEXT, porder INTEGER, torder INTEGER birth TEXT, regist TEXT, tel TEXT
)''')
cur.execute(clients)
db.commit()
orders = ('''
CREATE TABLE "orders" (
id_order INTEGER PRIMARY KEY, id_client INTEGER, id_cake INTEGER, date TEXT, val TEXT, address TEXT
)''')
cur.execute(orders)
db.commit()

oreders = ('''
CREATE INDEX regist_idx ON clients(regist);
cursor.execute("SELECT name FROM clients WHERE SUBSTR(regist, 1, 4)>2")
print(cursor.fetchall())

CREATE INDEX valueus ON orders(values);
cursor.execute("SELECT * FROM orders WHERE values=max(values)")
print(cursor.fetchall())

for row in cursor.execute('SELECT * FROM cakes ORDER BY price'):
    print(*row)
cursor.fetchall()

for row in cursor.execute('SELECT * FROM orders WHERE data=date'):
    print(*row)
cursor.fetchall() ''')         
