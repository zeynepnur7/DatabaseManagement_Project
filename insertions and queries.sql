INSERT INTO app_user(user_id, user_name, user_surname, has_saved_card)
VALUES 
('U000001','Zeynep','Erten', TRUE),
('U000002','Ebru','Köksal', TRUE),
('U000003','Ahmet','Yilmaz', FALSE), 
('U000004','Mehmet','Öztürk', TRUE),
('U000005','Deniz','Alsancak', FALSE),
('U000006','Gökhan','Türkmen', FALSE),
('U000007','Hande','Baladin', FALSE),
('U000008','Ali','Sofuoglu', TRUE),
('U000009','Sevde','Erdogan', FALSE),
('U000010','Burak','Demir', FALSE);

INSERT INTO user_address(address_id, user_id, title, city, address_details)
VALUES
('A000001','U000001', 'Ev' , 'Antalya','Sirinyali Mah. Lara Sahil Sitesi'),
('A000002','U000002', 'Ev' , 'Ankara','Tunali Pasaji No:12'),
('A000003','U000003', 'Yeni Ev' , 'Bursa','Nilufer Mah. Ozluce Sok.'),
('A000004','U000004', 'Yurt' , 'Antalya','Konyaalti Mah. Narenciye Yurdu'),
('A000005','U000005', 'Yazlik' , 'Izmir','Cesmealti Cad. No:50'),
('A000006','U000006', 'Ev' , 'Ankara','Cankaya Mah. Baskent Sitesi'),
('A000007','U000007', 'Is' , 'Trabzon','Ortahisar Mah. No:61'),
('A000008','U000008', 'Ev' , 'Istanbul','Kadikoy Mah. Barbaros Bul. No:1'),
('A000009','U000009', 'Studyo' , 'Antalya','Dedeman Mah. Akdeniz Pasaji'),
('A000010','U000010', 'Is' , 'Ankara', 'ODTU Teknokent Binasi');

INSERT INTO saved_card (card_id, user_id, card_number_masked, expiry_date, cvv_masked)
VALUES
('C000001', 'U000001','**** 1234','10/26','***'),
('C000002', 'U000002','**** 5678','06/28','***'),
('C000003', 'U000004','**** 9876','12/25','***'),
('C000004', 'U000008','**** 7744','02/27','***');


INSERT INTO restaurant(restaurant_id, name, city, average_score)
VALUES
('R000001', 'Mahalle Burger', 'Antalya',4.8),
('R000002', 'Pidem', 'Antalya',3.7),
('R000003', 'Kruvasante', 'Ankara',4.8),
('R000004', 'Usta Dönerci', 'Izmir',3.2),
('R000005', 'Simple Coffee', 'Ankara',4.5),
('R000006', 'Rotto Pizza', 'Antalya',4.7),
('R000007', 'Aspava', 'Ankara',4.6),
('R000008', 'Dominos Pizza', 'Bursa',4.3),
('R000009', 'Katik Doner', 'Trabzon',4.5),
('R000010', 'Burger King', 'Istanbul',3.7);


INSERT INTO orders (order_id, user_id, restaurant_id , address_id, total_amount, order_date,status)
VALUES
('O000001', 'U000001', 'R000001','A000001', 195.0,'2025-11-26', 'Teslim Edildi'),
('O000002', 'U000002', 'R000005','A000002', 160.0,'2025-11-28', 'Hazirlaniyor'),
('O000003', 'U000003', 'R000008','A000003', 250.0,'2025-11-29', 'Teslim Edildi'),
('O000004', 'U000004', 'R000002','A000004', 580.0,'2025-11-30', 'Yolda'),
('O000005', 'U000005', 'R000004','A000005', 400.50,'2025-12-01', 'Teslim Edildi'),
('O000006', 'U000006', 'R000003','A000006', 87.0,'2025-12-03', 'Teslim Edildi'),
('O000007', 'U000007', 'R000009','A000007', 340.0,'2025-12-04', 'Teslim Edildi'),
('O000008', 'U000008', 'R000010','A000008', 74.0,'2025-12-06', 'Iptal Edildi'),
('O000009', 'U000009', 'R000006','A000009', 195.0,'2025-12-09', 'Teslim Edildi'),
('O000010', 'U000010', 'R000007','A000010', 156.0,'2025-12-10', 'Hazirlaniyor');


INSERT INTO menu_item(item_id, restaurant_id, name, price, is_active)
VALUES
('M000001', 'R000001', 'Cheeseburger Menu',195,TRUE),
('M000002', 'R000002', 'Kiymali Pide',290,TRUE),
('M000003', 'R000003', 'Sade Kruvasan',87,TRUE),
('M000004', 'R000004', 'Iskender',250,TRUE),
('M000005', 'R000005', 'Americano',160,TRUE),
('M000006', 'R000006', 'Margherita',195,TRUE),
('M000007', 'R000007', 'Kofte Menu',156,TRUE),
('M000008', 'R000008', 'Mix Pizza',74,TRUE),
('M000009', 'R000009', 'Zurna Durum',195,TRUE),
('M000010', 'R000010', 'Big King',74,FALSE);

INSERT INTO review(review_id, order_id, rating, comment) 
VALUES
('V000001', 'O000001', 5 , 'Cok lezzetli ve hizli teslimat.'),
('V000002', 'O000002', 4 , 'Urun guzeldi, paketleme daha iyi olabilir.'),
('V000003', 'O000003', 5 , 'Harika.'),
('V000004', 'O000004', 3 , 'Tuz eksikligi vardi.'),
('V000005', 'O000005', 2 , 'Siparis cok yavas geldi.'),
('V000006', 'O000006', 4, 'Guzeldi.'),
('V000007', 'O000007', 5 , 'Favori restoranim.'),
('V000008', 'O000008', 1 , 'Siparis iptal edildi.'),
('V000009', 'O000009', 5 , 'Kurye cok kibardi, yemek de lezzetliydi.'),
('V000010', 'O000010', 3 , 'Cok Lezzetli ve hizli teslimat.');


SELECT name,city,average_score FROM restaurant 
WHERE city='Antalya'
ORDER BY average_score DESC;

SELECT user_name,user_surname 
FROM app_user
WHERE has_saved_card = TRUE
ORDER BY user_name ASC;

SELECT name AS restoran_adi, average_score AS puan
FROM restaurant
WHERE city = 'Ankara'
ORDER BY name ASC;

SELECT item_id, name AS urun_adi, price
FROM menu_item
WHERE is_active= FALSE;




SELECT 
COUNT(order_id) AS toplam_siparis_sayisi,
AVG(total_amount) AS tutar_ortalamasi
FROM orders;

SELECT status AS siparis_durumu,
COUNT(order_id) AS siparis_adedi
FROM orders
GROUP BY status
ORDER BY siparis_adedi DESC;

SELECT name AS restoran_adi, average_score AS puan
FROM restaurant
ORDER BY average_score DESC
LIMIT 1




UPDATE review
SET comment ='Siparis hizli geldi ama lezzeti ortalamanin altindaydi'
WHERE order_id ='O000010';

SELECT review_id, rating, comment
FROM review
WHERE comment ILIKE '%hizli%';



INSERT INTO menu_item(item_id, restaurant_id, name, price, is_active)
VALUES
('M000011','R000005','Tiramisu',200,TRUE),
('M000012','R000005','Latte',170,TRUE);

SELECT name AS urun_adi, price
FROM menu_item
WHERE restaurant_id = 'R000005'
ORDER BY price ASC;



SELECT o.order_id, o.total_amount, o.order_date, rest.name AS restoran_adi, rest.city AS sehir
FROM orders AS o
JOIN restaurant AS rest ON o.restaurant_id = rest.restaurant_id
WHERE o.total_amount > 120.0
EXCEPT 
(SELECT o.order_id, o.total_amount, o.order_date, rest.name AS restoran_adi, rest.city AS sehir
FROM orders AS o
JOIN restaurant AS rest ON o.restaurant_id = rest.restaurant_id
WHERE o.total_amount > 120.0 AND rest.city = 'Ankara')
ORDER BY total_amount DESC;
