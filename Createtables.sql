CREATE TABLE `Articulo` (
    `IdArticulo` INT NOT NULL AUTO_INCREMENT,
    `Descripcion` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`IdArticulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Venta` (
    `IdVenta` INT NOT NULL AUTO_INCREMENT,
    `FechaVenta` DATETIME NOT NULL,
    `IdArticulo` INT NOT NULL,
    `MontoArticulo` DECIMAL(15, 2) NOT NULL,
    PRIMARY KEY (`IdVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `Venta`
ADD CONSTRAINT `FK_Venta_Articulo`
FOREIGN KEY (`IdArticulo`) REFERENCES `Articulo` (`IdArticulo`);

-- No es necesario un segundo comando para habilitar la restricción en MySQL
INSERT INTO Articulo (Descripcion)  
VALUES ('Zapatos Nike');
INSERT INTO Articulo (Descripcion)  
VALUES ('Tenis Adidas');
INSERT INTO Articulo (Descripcion)  
VALUES ('Vestido Guess');
INSERT INTO Articulo (Descripcion)  
VALUES ('Laptop Dell XPS 13');
INSERT INTO Articulo (Descripcion)  
VALUES ('Monitor LG 27"');
INSERT INTO Articulo (Descripcion)  
VALUES ('Teclado Mec�nico RGB');
INSERT INTO Articulo (Descripcion)  
VALUES ('Mouse Logitech G502');
INSERT INTO Articulo (Descripcion)  
VALUES ('Silla Gamer DXRacer');
INSERT INTO Articulo (Descripcion)  
VALUES ('SSD Samsung 1TB');
INSERT INTO Articulo (Descripcion)  
VALUES ('Tarjeta Gr�fica RTX 4070');
INSERT INTO Articulo (Descripcion)  
VALUES ('Fuente Corsair 750W');
INSERT INTO Articulo (Descripcion)  
VALUES ('Memoria RAM 16GB DDR5');
INSERT INTO Articulo (Descripcion)  
VALUES ('Procesador AMD Ryzen 9');
INSERT INTO Articulo (Descripcion)  
VALUES ('Iphone 15');
INSERT INTO Articulo (Descripcion)  
VALUES ('Guitarra Electrica');

INSERT INTO Venta (FechaVenta, MontoArticulo, idarticulo) VALUES
('2000-01-01 00:00:00', 300.0, 1),
('2000-02-02 00:00:00', 500.0, 2),
('2024-02-01 10:15:00', 1200.5, 1),
('2000-02-01 10:15:00', 1200.5,  1),
('2024-02-01 11:30:00', 150.75,  3),
('2024-02-02 14:45:00', 300.0,  2),
('2001-02-02 16:10:00', 80.99,  4),
('2002-02-03 09:20:00', 250.0,  11),
('2024-02-03 12:05:00', 180.5,  12),
('2025-02-04 13:40:00', 750.0,  11),
('2023-02-04 15:55:00', 90.0,  5),
('2023-02-05 17:20:00', 130.99,  6),
('2022-02-05 19:10:00', 500.75,  7),
('2022-02-06 10:00:00', 1200.5, 5),
('2021-02-06 11:45:00', 300.0,  7),
('2020-02-07 14:30:00', 150.75,  1),
('2018-02-07 16:40:00', 80.99,  2),
('2021-02-08 09:50:00', 250.0,  15),
('2022-02-08 13:25:00', 180.5,  1),
('2021-02-09 15:00:00', 750.0,  3),
('2021-02-09 17:35:00', 90.0,  7),
('2025-02-10 19:00:00', 130.99,  7),
('2024-02-10 20:50:00', 500.75,  7),
('2024-02-11 08:45:00', 1200.5 , 8),
('2023-02-11 10:15:00', 150.75,  13),
('2023-02-12 12:30:00', 300.0,  13),
('2024-02-12 14:50:00', 80.99,  13),
('2015-02-13 16:05:00', 250.0,  13),
('2007-02-13 18:20:00', 180.5,  13),
('2008-02-14 09:40:00', 750.0,  2),
('2010-02-14 11:55:00', 90.0,  2),
('2010-02-15 13:10:00', 130.99,  2),
('2011-02-15 15:25:00', 500.75 , 2),
('2012-02-16 17:30:00', 1200.5, 1),
('2013-02-16 19:45:00', 150.75,  3),
('2013-02-17 08:00:00', 300.0,  2),
('2014-02-17 10:20:00', 80.99, 12),
('2025-02-18 12:45:00', 250.0, 12),
('2021-02-18 14:30:00', 180.5,  12),
('2022-02-19 16:15:00', 750.0,  12),
('2024-02-19 18:40:00', 90.0,  13),
('2025-02-20 20:10:00', 130.99,  15),
('2024-02-20 22:25:00', 500.75,  15);
