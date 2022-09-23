CREATE DATABASE `projeto-ecommerce`;

USE `projeto-ecommerce`;

CREATE TABLE IF NOT EXISTS `DBcustomer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(64) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `address` varchar(255) NOT NULL,
  `document` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
   CONSTRAINT unique_document_DBcustomer unique (document)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `DBcustomer` (`name`, `email`, `telephone`, `password`, `address`, `document`, `ip`, `approved`, `date_added` ) VALUES
('Jorge Amado', 'teste@teste.com.br', '9744552255', MD5('1234'), 'Rua Direita, 100', '99955544422', '192.168.0.1', 1, '2022-09-23 14:40:00'),
('Machado de Assis', 'teste2@teste.com.br', '1188554488', MD5('1234'), 'Rua Esqueda, 4520', '44455566622', '192.168.0.3', 1, '2022-09-23 14:40:00'),
('Carlos Drummoound de Andrade', 'teste3@teste.com.br', '45988775544', MD5('1234'), 'Rua Central, 987', '32255445588', '192.168.0.5', 1, '2022-09-23 14:40:00');

CREATE TABLE IF NOT EXISTS `DBproduct` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `stock` int(4) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `rating` int(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `DBproduct` (`product_id`, `model`, `sku`, `name`, `ean`, `stock`, `image`, `price`, `weight`, `length`, `width`, `height`, `rating`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(1, 'Product 1', 'XYZ', 'Produto Teste 01', '12345678901', 2, 'https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U', '100.0000', '146.40000000', '0.00000000', '0.00000000', '0.00000000', 0, 1, 0, '2009-02-03 16:06:50', '2011-09-30 01:05:39'),
(2, 'Product 2', 'XYZZ', 'Produto Teste 02', '12345678902', 3, 'https://i.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI', '279.9900', '133.00000000', '0.00000000', '0.00000000', '0.00000000', 3, 1, 0, '2009-02-03 16:42:17', '2011-09-30 01:06:08'),
(3, 'Product 3', 'XYXZ', 'Produto Teste 03', '12345678903', 100, 'https://i.picsum.photos/id/337/200/300.jpg?blur=5&hmac=TwsSBMFmtBOLeVNo_S4-beSp5rjSO7xhRyYAuxXGa8k', '190.0000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', 5, 1, 0, '2009-02-03 16:59:00', '2011-09-30 01:05:23'),
(4, 'Product 4', 'XYXZA', 'Produto Teste 04', '12345678904', 50, 'https://i.picsum.photos/id/870/200/300.jpg?blur=2&grayscale&hmac=ujRymp644uYVjdKJM7kyLDSsrqNSMVRPnGU99cKl6Vs', '80.0000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', 0, 1, 0, '2009-02-03 17:00:10', '2011-09-30 01:06:00'),
(5, 'Product 5', 'XYXZAS', 'Produto Teste 05', '12345678905', 27, 'https://i.picsum.photos/id/0/5616/3744.jpg?hmac=3GAAioiQziMGEtLbfrdbcoenXoWAW-zlyEAMkfEdBzQ', '100.0000', '5.00000000', '0.00000000', '0.00000000', '0.00000000', 4, 1, 0, '2009-02-03 17:07:26', '2011-09-30 01:07:22');