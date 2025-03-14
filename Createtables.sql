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
