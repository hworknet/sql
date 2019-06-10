-- 1

SELECT NOW();

-- 2

SELECT SYSDATE();

-- 3

SELECT CURRENT_TIMESTAMP;

-- 4

SELECT NOW(), NOW()+0;

-- 5

SELECT SYSDATE(), SYSDATE()+0;

-- 6

SELECT CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP()+0;

-- 7 

SELECT SYSDATE(), SLEEP(2), SYSDATE(2);

-- 6

SELECT NOW(), SLEEP(2), NOW(2);

-- 7

SELECT CURDATE();

-- 8

SELECT CURTIME();

-- 9

SELECT odate, DAYOFWEEK(odate) FROM orders;

-- 10

SELECT DAYOFWEEK(NOW());

-- 11

SELECT odate, WEEKDAY(odate) FROM orders;

-- 12

SELECT odate, DAY(odate) FROM orders;

-- 13

SELECT DAYOFYEAR(NOW());

-- 14

SELECT odate, MONTH(odate) FROM orders;

-- 15

SELECT DAYNAME(NOW());

-- 16

-- налаштування локалі
SELECT @@lc_time_names;

-- 17 

SET lc_time_names = 'RU_ru';

-- 18

SELECT MONTHNAME(NOW());

-- 19

SELECT DAY(NOW()), MONTHNAME(NOW());

-- 20

SELECT CONCAT_WS(' - ',DAY(NOW()), MONTHNAME(NOW())) as date;

-- 21

SELECT QUARTER(NOW());

-- 22

SELECT odate, YEAR(odate) FROM orders;

-- 23

SELECT YEAR('0000-00-00') FROM orders;

-- 24

SELECT HOUR(NOW());

-- 25

SELECT NOW(), MINUTE(NOW());

-- 26

SELECT NOW(), SECOND(NOW());

-- 27

SELECT NOW(), DATE_FORMAT(NOW(), '%d/%m/%Y');

-- 28

SELECT odate, DATE_FORMAT(odate, '%Y%m0'), PERIOD_ADD(DATE_FORMAT(odate, '%Y%m'), 7) FROM orders;

-- 29

SELECT PERIOD_ADD(DATE_FORMAT(NOW(), '%Y%m'), 2);

-- 30

SELECT PERIOD_ADD(201203, 2);

-- 31

SELECT PERIOD_DIFF(201205, 201203);

-- 32

SELECT NOW(), ADDDATE(NOW(), INTERVAL 1 SECOND);

-- 33

SELECT NOW(), NOW() + INTERVAL 1 HOUR;

-- 34

SELECT NOW(), NOW() - INTERVAL 1 HOUR;

-- 35

SELECT NOW(), SUBDATE(NOW(), INTERVAL 2 HOUR);

-- 36

SELECT NOW(), ADDDATE(NOW(), 10);

-- 37 

SELECT NOW(), EXTRACT(MINUTE FROM NOW());

-- 38

SELECT NOW(), TIME_FORMAT(NOW(), '%H:%i');

-- 39

SELECT SEC_TO_TIME(60);

-- 40

SELECT TIME_TO_SEC('01:00:00');

-- 41

SELECT NOW(), DATE(NOW());

-- 42

SELECT NOW(), TIME(NOW());