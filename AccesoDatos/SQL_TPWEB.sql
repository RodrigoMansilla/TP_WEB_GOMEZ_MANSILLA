/*USE master

GO

DROP DATABASE TP_WEB_PROMO_COMERCIO

GO
*/


CREATE DATABASE TP_WEB_PROMO_COMERCIO

GO

USE TP_WEB_PROMO_COMERCIO

GO


CREATE TABLE PRODUCTOS
(	ID_PRODUCTO TINYINT NOT NULL PRIMARY KEY IDENTITY(1,1),--VALOR AUTOINCREMENTABLE
	DESCRIPCION  VARCHAR(250) NOT NULL,--
	ESTADO BIT NOT NULL DEFAULT 1,--EL VALOR 1 SIGNIFICA ESTADO ACTIVO
	FECHA_INGRESO DATETIME NOT NULL DEFAULT GETDATE()--ESTO HACE QUE TOME LA FECHA ACTUAL COMO FECHA DE INGRESO
)




GO

CREATE TABLE PARTICIPANTES
(	ID_PARTICIPANTE  INT NOT NULL PRIMARY KEY IDENTITY(1,1),--VALOR AUTOINCREMENTABLE
	DNI INT UNIQUE NOT NULL CHECK(DNI>0),
	APELLIDO VARCHAR(100) NOT NULL ,--
	NOMBRE VARCHAR(100) NOT NULL ,--
	EMAIL VARCHAR(100) NOT NULL,
	DIRECCION VARCHAR(100) NOT NULL,
	CIUDAD VARCHAR(100) NOT NULL,
	CODIGO_POSTAL INT NOT NULL,
	ESTADO BIT NOT NULL DEFAULT 1,--EL VALOR 1 SIGNIFICA ESTADO ACTIVO

)
GO





CREATE TABLE VAUCHERS (
    ID_VAUCHER INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    CODIGO VARCHAR(255) NOT NULL,
	PARTICIPANTE INT NOT NULL FOREIGN KEY REFERENCES PARTICIPANTES (ID_PARTICIPANTE),
	PRODUCTO TINYINT NOT NULL FOREIGN KEY REFERENCES PRODUCTOS (ID_PRODUCTO),
	ESTADO BIT NOT NULL DEFAULT 1,--EL VALOR 1 SIGNIFICA ESTADO ACTIVO
    FECHA_INGRESO DATETIME NOT NULL DEFAULT GETDATE()--ESTO HACE QUE TOME LA FECHA ACTUAL COMO FECHA DE INGRESO

)
GO

---INSERTAMOS DATOS PRODUCTOS--10 PRODUCTOS

INSERT INTO PRODUCTOS(DESCRIPCION)VALUES('GUANTE DE BOXEO JUNIOR DE 6 OZ')
INSERT INTO PRODUCTOS(DESCRIPCION)VALUES('PELOTA BASQUET N� 3 DRIBLING GOMA')
INSERT INTO PRODUCTOS(DESCRIPCION)VALUES('BOLSO PORTA MATERIAL DRIAL CON CIERRE')
INSERT INTO PRODUCTOS(DESCRIPCION)VALUES('AQUA BAG - BOLSA CON BASE PARA ENTRENAMIENTO MARCA GRANMARC')
INSERT INTO PRODUCTOS(DESCRIPCION)VALUES('PELOTA DE FUTBOL N� 3. DRIBLING ARGENTINA. COSIDA A MAQUINA')
INSERT INTO PRODUCTOS(DESCRIPCION)VALUES('GUANTE + PALMETA PARA ARQUERO DE HOCKEY DRIAL')
INSERT INTO PRODUCTOS(DESCRIPCION)VALUES('PALO DE HOCKEY MARCA ALITRA 30". MADERA INICIACION')
INSERT INTO PRODUCTOS(DESCRIPCION)VALUES('BOLSO PENALTY MODELOE GYM S11 - TIPO BOTINERO')
INSERT INTO PRODUCTOS(DESCRIPCION)VALUES('TUBO DE TENIS PENN - MOD. ATP X 3 U')
INSERT INTO PRODUCTOS(DESCRIPCION)VALUES('PELOTA VOLEY ELICOIDAL 8 GAJOS PEGADA- MARCA ALL PLAY')

GO

---INSERTAMOS DATOS CLIENTES--10 PRODUCTOS

INSERT INTO PARTICIPANTES(DNI,NOMBRE,APELLIDO,EMAIL,DIRECCION,CIUDAD,CODIGO_POSTAL)VALUES(38923438,'Lopez',' Rodrigo', 'rodrigo@aLopez.com','Urbanizaci�n Cobegen deturpo, 202B 20�F','Lugo',23604 )
INSERT INTO PARTICIPANTES(DNI,NOMBRE,APELLIDO,EMAIL,DIRECCION,CIUDAD,CODIGO_POSTAL)VALUES(37923438,'Robledo','Sergio', 'embrido@sacara.eu','Rambla  passerell, 96 9�C','Lugo',23604)
INSERT INTO PARTICIPANTES(DNI,NOMBRE,APELLIDO,EMAIL,DIRECCION,CIUDAD,CODIGO_POSTAL)VALUES(37923638,'Kusters','Kevin','criminalitzo@seure.net','Callej�n Esbardell�rem domicili�n rap�ssiu, 110 14�A','Lugo',23604)
INSERT INTO PARTICIPANTES(DNI,NOMBRE,APELLIDO,EMAIL,DIRECCION,CIUDAD,CODIGO_POSTAL)VALUES(35933438,	'Ocampo', 'Eliana', 'encoratja@cambrejaren.com','Traves�a Propini hibridaries llass�ssem documenta, 104A 13�D','Lugo',23604)
INSERT INTO PARTICIPANTES(DNI,NOMBRE,APELLIDO,EMAIL,DIRECCION,CIUDAD,CODIGO_POSTAL)VALUES(30983438,'Rodriguez', 'Pablo','rossegeu@calentejava.eu','Cuesta Torpedinaria, 36A','Lugo',23604)
INSERT INTO PARTICIPANTES(DNI,NOMBRE,APELLIDO,EMAIL,DIRECCION,CIUDAD,CODIGO_POSTAL)VALUES(34973438, 'Gutierrez', 'Maria',' cernem@sorollares.com','Ronda Magoli, 240 17�F','Lugo',23604)
INSERT INTO PARTICIPANTES(DNI,NOMBRE,APELLIDO,EMAIL,DIRECCION,CIUDAD,CODIGO_POSTAL)VALUES(33963438, 'Hernandez', 'Josefina','ocupara@reluctancies.org','Ronda Magoli, 240 17�F','Lugo',23604)
INSERT INTO PARTICIPANTES(DNI,NOMBRE,APELLIDO,EMAIL,DIRECCION,CIUDAD,CODIGO_POSTAL)VALUES(32963438,'Lezcano', 'Mario', 'desempilaves@assamarrassis.org','Paseo Balejaries, 221 8�C','Lugo',23604)
INSERT INTO PARTICIPANTES(DNI,NOMBRE,APELLIDO,EMAIL,DIRECCION,CIUDAD,CODIGO_POSTAL)VALUES(31953438,	'Dloster', 'Kaniel', 'reballaveu@sobreexcediries.net','Ronda Beneiteg�ssiu encollau, 161A 11�B','Lugo',23604)
INSERT INTO PARTICIPANTES(DNI,NOMBRE,APELLIDO,EMAIL,DIRECCION,CIUDAD,CODIGO_POSTAL)VALUES(30953438, 'Falabuig', 'Cernando','guixessin@cristallitzin.org','Ronda encollau, 161A 11�B','Lugo',23604)


GO


INSERT INTO VAUCHERS([CODIGO],[PARTICIPANTE],[PRODUCTO]) VALUES('KOI15SDD4LH',6,8),
('ZHO25XSM8OR',8,1),
('CCN36JBX7NQ',7,2),
('KDW97ZVC9QI',5,2),
('KDA97WHI5CK',8,7),
('DRF84ABE0AK',5,1),
('MPD65NCN1RF',4,4),
('EOP59VJI7UB',3,6),
('RMZ67PIQ0JQ',7,10),
('UKI87YWB4SE',4,1);