-- ALL table client
SELECT * FROM bolo_do_caco.cliente;

-- SEARCH FOR NAME OF CLIENT
SELECT * FROM bolo_do_caco.cliente c WHERE c.cliente_nome = 'Hugo';

-- INSERT NEW CLIENT
INSERT INTO `bolo_do_caco`.`cliente` (`cliente_id`, `cliente_nome`, `cliente_morada`, `cliente_nif`, `clientecol`) VALUES ('8', 'Hugo', 'London', '333333333', '54');


