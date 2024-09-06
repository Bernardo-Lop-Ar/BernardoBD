USE ex8;

CREATE TABLE produtos (
	id_produto INT NOT NULL PRIMARY KEY,
    nome_produto VARCHAR(150) NOT NULL,
    desc_produto VARCHAR(255) NOT NULL,
    valor_produto DECIMAL(10,2) NOT NULL
    );

CREATE TABLE clientes (
	id_cliente INT NOT NULL PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    email_cliente VARCHAR(100) NOT NULL,
    telefone_cliente VARCHAR(15) NOT NULL
    );
    
CREATE TABLE pedidos (
	id_pedido INT NOT NULL PRIMARY KEY,
    desc_pedido VARCHAR(255) NOT NULL,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
    );
    
CREATE TABLE detalhe_pedido (
	id_produto INT NOT NULL,
	id_pedido INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
    );
    
-- As entidades(pedidos, clientes e pedidos) são primárias, já detalhe_pedido é uma entidade fraca
-- dependendo de outras duas, o relacionamento entre produtos e pedidos é de muitos para muitos
-- já a relação entre Clientes e Pedidos é diferente, pois um cliente pode fazer vários pedidos, 
-- mas cada pedido é feito por um cliente