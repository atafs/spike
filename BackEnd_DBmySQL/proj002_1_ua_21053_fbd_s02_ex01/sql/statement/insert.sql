-- insert data
INSERT INTO `ua_21053_fbd_s02_ex01`.`firma` (`Firma_cod`, `Firma_nome`, `País`) VALUES ('001', 'Sintra', 'PT');
INSERT INTO `ua_21053_fbd_s02_ex01`.`firma` (`Firma_cod`, `Firma_nome`, `País`) VALUES ('002', 'Hospital', 'PT');
INSERT INTO `ua_21053_fbd_s02_ex01`.`firma` (`Firma_cod`, `Firma_nome`, `País`) VALUES ('003', 'Moonfruit', 'UK');
INSERT INTO `ua_21053_fbd_s02_ex01`.`firma` (`Firma_cod`, `Firma_nome`, `País`) VALUES ('004', 'Wework', 'UK');
INSERT INTO `ua_21053_fbd_s02_ex01`.`firma` (`Firma_cod`, `Firma_nome`, `País`) VALUES ('005', 'Central London League', 'UK');
INSERT INTO `ua_21053_fbd_s02_ex01`.`firma` (`Firma_cod`, `Firma_nome`, `País`) VALUES ('006', 'Picadilly Circus', 'UK');

-- all attributes in table table
SELECT * FROM firma;

-- insert data
INSERT INTO `ua_21053_fbd_s02_ex01`.`produto` (`Produto_cod`, `Produto_nome`, `Tipo`) VALUES ('001', 'Dragao', 'A');
INSERT INTO `ua_21053_fbd_s02_ex01`.`produto` (`Produto_cod`, `Produto_nome`, `Tipo`) VALUES ('002', 'Ninja', 'B');
INSERT INTO `ua_21053_fbd_s02_ex01`.`produto` (`Produto_cod`, `Produto_nome`, `Tipo`) VALUES ('003', 'Carro', 'C');
INSERT INTO `ua_21053_fbd_s02_ex01`.`produto` (`Produto_cod`, `Produto_nome`, `Tipo`) VALUES ('004', 'Aviao', 'D');
INSERT INTO `ua_21053_fbd_s02_ex01`.`produto` (`Produto_cod`, `Produto_nome`, `Tipo`) VALUES ('005', 'Mota', 'E');
INSERT INTO `ua_21053_fbd_s02_ex01`.`produto` (`Produto_cod`, `Produto_nome`, `Tipo`) VALUES ('006', 'Boss', 'F');

-- all attributes in table table
SELECT * FROM produto;

-- insert data
INSERT INTO `ua_21053_fbd_s02_ex01`.`fornece` (`Firma_Firma_cod`, `Produto_Produto_cod`, `Preco`) VALUES ('001', '001', '10.24');
INSERT INTO `ua_21053_fbd_s02_ex01`.`fornece` (`Firma_Firma_cod`, `Produto_Produto_cod`, `Preco`) VALUES ('002', '002', '155.24');
INSERT INTO `ua_21053_fbd_s02_ex01`.`fornece` (`Firma_Firma_cod`, `Produto_Produto_cod`, `Preco`) VALUES ('003', '003', '121.24');
INSERT INTO `ua_21053_fbd_s02_ex01`.`fornece` (`Firma_Firma_cod`, `Produto_Produto_cod`, `Preco`) VALUES ('004', '004', '1.24');
INSERT INTO `ua_21053_fbd_s02_ex01`.`fornece` (`Firma_Firma_cod`, `Produto_Produto_cod`, `Preco`) VALUES ('005', '005', '1555.24');
INSERT INTO `ua_21053_fbd_s02_ex01`.`fornece` (`Firma_Firma_cod`, `Produto_Produto_cod`, `Preco`) VALUES ('006', '006', '106764.24');

-- all attributes in table table
SELECT * FROM fornece;
