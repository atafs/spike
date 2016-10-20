-- insert
INSERT INTO `ua_21053_fbd_s02_ex02`.`cliente` (`nome_cliente`, `morada_cliente`, `cidade_cliente`) VALUES ('Americo', 'Leyton', 'London');
INSERT INTO `ua_21053_fbd_s02_ex02`.`cliente` (`nome_cliente`, `morada_cliente`, `cidade_cliente`) VALUES ('Ana', 'Rio de Mouro', 'Sintra');
INSERT INTO `ua_21053_fbd_s02_ex02`.`cliente` (`nome_cliente`, `morada_cliente`, `cidade_cliente`) VALUES ('Jose', 'Monte Estoril', 'Estoril');
INSERT INTO `ua_21053_fbd_s02_ex02`.`cliente` (`nome_cliente`, `morada_cliente`, `cidade_cliente`) VALUES ('Pedro', 'Vale Mourao', 'Sintra');

-- select
SELECT * FROM cliente;

-- insert
INSERT INTO `ua_21053_fbd_s02_ex02`.`balcao` (`n_balcao`, `cidade_balcao`, `activo`) VALUES ('2', 'Sintra', '0');
INSERT INTO `ua_21053_fbd_s02_ex02`.`balcao` (`n_balcao`, `cidade_balcao`, `activo`) VALUES ('3', 'Cascais', '0');
INSERT INTO `ua_21053_fbd_s02_ex02`.`balcao` (`n_balcao`, `cidade_balcao`, `activo`) VALUES ('4', 'Belem', '1');
INSERT INTO `ua_21053_fbd_s02_ex02`.`balcao` (`n_balcao`, `cidade_balcao`, `activo`) VALUES ('5', 'Stratford', '1');

-- select
SELECT * FROM balcao;

-- insert
INSERT INTO `ua_21053_fbd_s02_ex02`.`deposito` (`n_conta`, `Balcao_n_balcao`, `Cliente_nome_cliente`, `saldo`) VALUES ('1', '2', 'Americo', '1450.20');
INSERT INTO `ua_21053_fbd_s02_ex02`.`deposito` (`n_conta`, `Balcao_n_balcao`, `Cliente_nome_cliente`, `saldo`) VALUES ('2', '5', 'Jose', '457.20');
INSERT INTO `ua_21053_fbd_s02_ex02`.`deposito` (`n_conta`, `Balcao_n_balcao`, `Cliente_nome_cliente`, `saldo`) VALUES ('3', '1', 'Pedro', '23.20');
INSERT INTO `ua_21053_fbd_s02_ex02`.`deposito` (`n_conta`, `Balcao_n_balcao`, `Cliente_nome_cliente`, `saldo`) VALUES ('4', '2', 'Ana', '3443.20');
INSERT INTO `ua_21053_fbd_s02_ex02`.`deposito` (`n_conta`, `Balcao_n_balcao`, `Cliente_nome_cliente`, `saldo`) VALUES ('5', '4', 'Jose', '50.20');
INSERT INTO `ua_21053_fbd_s02_ex02`.`deposito` (`n_conta`, `Balcao_n_balcao`, `Cliente_nome_cliente`, `saldo`) VALUES ('6', '5', 'Pedro', '14350.20');

-- select
SELECT * FROM deposito;

-- insert
INSERT INTO `ua_21053_fbd_s02_ex02`.`emprestimo` (`n_emprestimo`, `Balcao_n_balcao`, `Cliente_nome_cliente`, `valor`) VALUES ('1', '4', 'Americo', '213.23');
INSERT INTO `ua_21053_fbd_s02_ex02`.`emprestimo` (`n_emprestimo`, `Balcao_n_balcao`, `Cliente_nome_cliente`, `valor`) VALUES ('2', '1', 'Jose', '21333.23');
INSERT INTO `ua_21053_fbd_s02_ex02`.`emprestimo` (`n_emprestimo`, `Balcao_n_balcao`, `Cliente_nome_cliente`, `valor`) VALUES ('3', '4', 'Pedro', '24.23');
INSERT INTO `ua_21053_fbd_s02_ex02`.`emprestimo` (`n_emprestimo`, `Balcao_n_balcao`, `Cliente_nome_cliente`, `valor`) VALUES ('4', '5', 'Ana', '123.23');
INSERT INTO `ua_21053_fbd_s02_ex02`.`emprestimo` (`n_emprestimo`, `Balcao_n_balcao`, `Cliente_nome_cliente`, `valor`) VALUES ('5', '2', 'Americo', '9987.23');
INSERT INTO `ua_21053_fbd_s02_ex02`.`emprestimo` (`n_emprestimo`, `Balcao_n_balcao`, `Cliente_nome_cliente`, `valor`) VALUES ('6', '3', 'Jose', '32.23');

-- select
SELECT * FROM emprestimo;



