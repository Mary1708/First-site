SELECT * FROM clients WHERE SUBSTR(regist, 1, 4)>2 ( в таком случае будем делать скидку)

SELECT * FROM orders WHERE values=max(values) (получит купон на следующий заказ)

SELECT * FROM cakes WHERE price>3500 (сортировка клиентом товаров)

SELECT * FROM cakes ORDER BY price (сортировка товаров по возрастанию цены)

SELECT * FROM orders WHERE data=date (где, data - на которое оформлен заказ, date- число, на которое мы смотрим заказы. Может пригодиться при приеме заказа. Или просмотре заказов на определенное число)
 

