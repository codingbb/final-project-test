-- user 정보
insert into user_tb(role, username, password, person_name, phone, birth, email, created_at) values(1, 'admin', '1234', '최주호', '010-1234-5678', '1970-12-03','admin@nate.com', now());
insert into user_tb(role, username, password, person_name, phone, birth, email, created_at) values(2, 'ssar', '1234', '이소연', '010-2222-2222', '1980-03-21','ssar@nate.com', now());
insert into user_tb(role, username, password, person_name, phone, birth, email, created_at) values(2, 'cos', '1234', '심유주', '010-3333-3333', '1988-09-22','cos@nate.com', now());
insert into user_tb(role, username, password, person_name, phone, birth, email, created_at) values(2, 'love', '1234', '김하형', '010-4444-4444', '1999-01-26','love@nate.com', now());

-- 카테고리
INSERT INTO category_tb(category_name, created_at) VALUES ('과일', NOW());
INSERT INTO category_tb(category_name, created_at) VALUES ('채소', NOW());
INSERT INTO category_tb(category_name, created_at) VALUES ('유제품', NOW());

-- option 정보
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('성주 참외 1.5kg', 10, 17900, 1, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('성주 참외 3kg (+8,000원)', 20, 25900, 1, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('성주 참외 4.5kg (+12,000원)', 30, 29,900, 1, NOW());

INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('바나나 실속 2종', 50, 4800, 2, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('바나나 실속 4종 (+3,000원)', 50, 7800, 2, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('바나나 실속 6종 (+5,000원)', 50, 9800, 2, NOW());

INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('당도선별 천혜향 1kg', 30, 15000, 3, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('당도선별 천혜향 3kg (+15,000원)', 40, 30000, 3, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('당도선별 천혜향 5kg (+20,000원)', 30, 35000, 3, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('당도선별 천혜향 7kg (+35,000원)', 40, 50000, 3, NOW());

INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('햇당근 500g', 50, 1900, 4, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('햇당근 1kg (+3,000원)', 50, 4900, 4, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('햇당근 3kg (+8,000원)', 50, 9900, 4, NOW());

INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('오이지 오이 10개', 50, 5900, 5, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('오이지 오이 30개 (+5,000원)', 50, 10900, 5, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('오이지 오이 40개 (+10,000원)', 50, 15900, 5, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('오이지 오이 50개 (+15,000원)', 50, 20900, 5, NOW());

INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('애플청포도 500g', 30, 11900, 6, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('애플청포도 1kg (+5,000원)', 40, 16900, 6, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('애플청포도 2kg (+10,000원)', 50, 21900, 6, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('애플청포도 3kg (+15,000원)', 20, 26900, 6, NOW());

INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('우유오리지널 1000ml 6입', 80, 15000, 7, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('우유오리지널 1000ml 12입 (+15,000원)', 80, 30000, 7, NOW());
INSERT INTO option_tb(option_name, qty, price, product_id, created_at) VALUES ('우유오리지널 1000ml 24입 (+45,000원)', 80, 60000, 7, NOW());


-- product 정보
INSERT INTO product_tb(name, img, category_id, created_at) VALUES ('성주 참외', 'prod_3.jpg', 1, NOW());
INSERT INTO product_tb(name, img, category_id, created_at) VALUES ('바나나', 'prod_4.jpg', 1, NOW());
INSERT INTO product_tb(name, img, category_id, created_at) VALUES ('당도선별 천혜향', 'prod_1.jpg', 1, NOW());
INSERT INTO product_tb(name, img, category_id, created_at) VALUES ('햇당근', 'prod_2.jpg', 2, NOW());
INSERT INTO product_tb(name, img, category_id, created_at) VALUES ('오이지 오이','prod_2.jpg', 2, NOW());
INSERT INTO product_tb(name, img, category_id, created_at) VALUES ('애플청포도', 'prod_7.jpg', 1, NOW());
INSERT INTO product_tb(name, img, category_id, created_at) VALUES ('우유오리지널', 'prod_8.jpg', 3, NOW());

-- cart 정보
INSERT INTO cart_tb(user_id, option_id, order_qty, is_checked, created_at) VALUES (2, 1, 20, false, NOW());
INSERT INTO cart_tb(user_id, option_id, order_qty, is_checked, created_at) VALUES (2, 3, 10, false, NOW());
INSERT INTO cart_tb(user_id, option_id, order_qty, is_checked, created_at) VALUES (2, 4,  5, false, NOW());
INSERT INTO cart_tb(user_id, option_id, order_qty, is_checked, created_at) VALUES (3, 2, 15, false, NOW());
INSERT INTO cart_tb(user_id, option_id, order_qty, is_checked, created_at) VALUES (3, 5, 10, false, NOW());
INSERT INTO cart_tb(user_id, option_id, order_qty, is_checked, created_at) VALUES (4, 3,  20, false, NOW());
INSERT INTO cart_tb(user_id, option_id, order_qty, is_checked, created_at) VALUES (4, 2,  3, false, NOW());

-- order 정보
-- INSERT INTO order_tb(user_id, address, sum, status, orderNumb, created_at) VALUES (2, '부산광역시 진구 신암로', 119500, 'ORDER_COMPLETE', '240422RVLR4', '2024-04-22 14:00:00');
-- INSERT INTO order_tb(user_id, address, sum, status, orderNumb, created_at) VALUES (2, '부산광역시 진구 신암로', 129000, 'ORDER_COMPLETE', '240428ESC5R','2024-04-28 15:30:00');
-- INSERT INTO order_tb(user_id, address, sum, status, orderNumb, created_at) VALUES (3, '서울 강남구 가로수길 10', 99000, 'ORDER_COMPLETE', '240501TKDSD','2024-05-01 09:45:00');
-- INSERT INTO order_tb(user_id, address, sum, status, orderNumb, created_at) VALUES (4, '서울 신사동 541', 90000, 'ORDER_CANCEL', '240428TKD52','2024-04-28 18:00:00');
--
--
-- -- -- order-item 정보
-- INSERT INTO order_item_tb(product_id, order_qty, order_id, created_at) VALUES (1, 5, 1, NOW());
-- INSERT INTO order_item_tb(product_id, order_qty, order_id, created_at) VALUES (3, 2, 1, NOW());
--
-- INSERT INTO order_item_tb(product_id, order_qty, order_id, created_at) VALUES (4, 7, 2, NOW());
-- INSERT INTO order_item_tb(product_id, order_qty, order_id, created_at) VALUES (2, 5, 2, NOW());
-- INSERT INTO order_item_tb(product_id, order_qty, order_id, created_at) VALUES (5, 3, 2, NOW());
--
-- INSERT INTO order_item_tb(product_id, order_qty, order_id, created_at) VALUES (4, 10, 3, NOW());
-- INSERT INTO order_item_tb(product_id, order_qty, order_id, created_at) VALUES (3, 6, 4, NOW());

