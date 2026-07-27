
mysql> CREATE DATABASE shop_db;
Query OK, 1 row affected (0.06 sec)

mysql> USE shop_db;
Database changed
mysql> CREATE TABLE  products;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> CREATE TABLE  products(product_id INT PRIMARY KEY,product_name VARCHAR(90) NOT NULL, category VARCHAR(90) NOT NULL, price DECIMAL(8,2) stock INT DEFAULTS 0);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'stock INT DEFAULTS 0)' at line 1
mysql> CREATE TABLE  products(product_id INT PRIMARY KEY,product_name VARCHAR(90) NOT NULL, category VARCHAR(90) NOT NULL, price DECIMAL(8,2) stock INT DEFAULTS (0));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'stock INT DEFAULTS (0))' at line 1
mysql> CREATE TABLE  products(product_id INT PRIMARY KEY,product_name VARCHAR(90) NOT NULL, category VARCHAR(90) NOT NULL, price DECIMAL(8,2), stock INT DEFAULTS (0));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DEFAULTS (0))' at line 1
mysql> CREATE TABLE  products(product_id INT PRIMARY KEY,product_name VARCHAR(90) NOT NULL, category VARCHAR(90) NOT NULL, price DECIMAL(8,2), stock INT "DEFAULTS" (0));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '"DEFAULTS" (0))' at line 1
mysql> CREATE TABLE  products(product_id INT PRIMARY KEY,product_name VARCHAR(90) NOT NULL, category VARCHAR(90) NOT NULL, price DECIMAL(8,2), stock INT DEFAULTS '0');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DEFAULTS '0')' at line 1
mysql> CREATE TABLE  products(product_id INT PRIMARY KEY,product_name VARCHAR(90) NOT NULL, category VARCHAR(90) NOT NULL, price DECIMAL(8,2), stock INT DEFAULT '0');
Query OK, 0 rows affected (0.08 sec)

mysql> DESC products;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| product_id   | int          | NO   | PRI | NULL    |       |
| product_name | varchar(90)  | NO   |     | NULL    |       |
| category     | varchar(90)  | NO   |     | NULL    |       |
| price        | decimal(8,2) | YES  |     | NULL    |       |
| stock        | int          | YES  |     | 0       |       |
+--------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> INSERT INTO products VALUE(1,kisme, chocolate, 1,10000);
ERROR 1054 (42S22): Unknown column 'kisme' in 'field list'
mysql> INSERT INTO products VALUE(1,"kisme", "chocolate", 1,10000);
Query OK, 1 row affected (0.07 sec)

mysql> INSERT INTO products VALUE(2,"crackzack", "bicuits", 5,20000)
    -> ;
Query OK, 1 row affected (0.07 sec)

mysql> INSERT INTO products VALUE(3,"kaccha mango", "candy", 1,50000);
Query OK, 1 row affected (0.05 sec)

mysql> INSERT INTO products VALUE(4,"rusk", "toast", 35,70000);
Query OK, 1 row affected (0.05 sec)

mysql> INSERT INTO products VALUE(5,"happy-happy", "biscuits", 5,90000);
Query OK, 1 row affected (0.05 sec)

mysql> INSERT INTO products VALUE(6,"monaco", "biscuits", 5,30000);
Query OK, 1 row affected (0.06 sec)

mysql> SELECT * FROM products;
+------------+--------------+-----------+-------+-------+
| product_id | product_name | category  | price | stock |
+------------+--------------+-----------+-------+-------+
|          1 | kisme        | chocolate |  1.00 | 10000 |
|          2 | crackzack    | bicuits   |  5.00 | 20000 |
|          3 | kaccha mango | candy     |  1.00 | 50000 |
|          4 | rusk         | toast     | 35.00 | 70000 |
|          5 | happy-happy  | biscuits  |  5.00 | 90000 |
|          6 | monaco       | biscuits  |  5.00 | 30000 |
+------------+--------------+-----------+-------+-------+
6 rows in set (0.04 sec)

mysql>