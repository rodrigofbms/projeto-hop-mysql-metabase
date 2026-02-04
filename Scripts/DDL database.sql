
CREATE TABLE stg_ordem_servico (
                ordem_servico_id BIGINT,
                cliente_nome VARCHAR(100),
                data DATE,
                Placa VARCHAR(10),
                Marca VARCHAR(50),
                Modelo VARCHAR(50),
                faturado VARCHAR(10),
                situacao VARCHAR(30),
                funcionario_nome VARCHAR(100)
);


CREATE TABLE stg_vendas (
                venda_id BIGINT,
                ordem_servico_id BIGINT,
                cliente_id BIGINT,
                cliente_nome VARCHAR(100),
                data_venda DATE,
                valor_total DOUBLE PRECISION,
                desconto DOUBLE PRECISION,
                funcionario_nome VARCHAR(100)
);


CREATE TABLE stg_clientes (
                cliente_id BIGINT,
                nome_razaosocial VARCHAR(100),
                apelido_fantasia VARCHAR(100),
                cpf_cnpj VARCHAR(50),
                municipio VARCHAR(50),
                bairro VARCHAR(50),
                endereco VARCHAR(100),
                telefone VARCHAR(50),
                email VARCHAR(50)
);


CREATE TABLE stg_funcionario (
                funcionario_id BIGINT,
                matricula BIGINT,
                nome VARCHAR(100),
                cpf VARCHAR(50),
                data_contratacao DATE,
                telefone VARCHAR(50),
                setor VARCHAR(50)
);

CREATE TABLE dim_calendario (
                sk_calendario INT AUTO_INCREMENT NOT NULL,
                data DATE NOT NULL,
                ano INT NOT NULL,
                semestre VARCHAR(20) NOT NULL,
                trimestre VARCHAR(20) NOT NULL,
                mes VARCHAR(20) NOT NULL,
                semana_ano INT NOT NULL,
                dia_semana VARCHAR(20) NOT NULL,
                dia INT NOT NULL,
                PRIMARY KEY (sk_calendario)
);


CREATE TABLE dim_clientes (
                sk_cliente INT AUTO_INCREMENT NOT NULL,
                versao INT NOT NULL,
                cliente_id INT,
                nome_razaosocial VARCHAR(100),
                apelido_fantasia VARCHAR(100),
                cpf_cnpj VARCHAR(50),
                municipio VARCHAR(50),
                bairro VARCHAR(50),
                endereco VARCHAR(100),
                telefone VARCHAR(50),
                email VARCHAR(50),
                data_inicio DATETIME,
                data_fim DATETIME,
                PRIMARY KEY (sk_cliente)
);

ALTER TABLE dim_clientes MODIFY COLUMN versao INTEGER COMMENT 'versão do registro';

ALTER TABLE dim_clientes MODIFY COLUMN data_inicio TIMESTAMP COMMENT 'data de início do registro';

ALTER TABLE dim_clientes MODIFY COLUMN data_fim TIMESTAMP COMMENT 'data do fim do registro';


CREATE TABLE dim_funcionario (
                sk_funcionario INT AUTO_INCREMENT NOT NULL,
                funcionario_id INT NOT NULL,
                matricula INT,
                nome VARCHAR(100),
                telefone VARCHAR(50),
                setor VARCHAR(50),
                cpf VARCHAR(50),
                data_contratacao DATE,
                PRIMARY KEY (sk_funcionario)
);


CREATE TABLE dim_ordem_servico (
                sk_ordem_servico INT AUTO_INCREMENT NOT NULL,
                ordem_servico_id INT NOT NULL,
                placa VARCHAR(15),
                marca VARCHAR(50),
                modelo VARCHAR(50),
                faturado VARCHAR(10),
                situacao VARCHAR(30),
                PRIMARY KEY (sk_ordem_servico)
);


CREATE TABLE fato_vendas (
                sk_venda INT AUTO_INCREMENT NOT NULL,
                sk_data_venda INT NOT NULL,
                sk_funcionario INT NOT NULL,
                sk_cliente INT NOT NULL,
                sk_ordem_servico INT NOT NULL,
                venda_id INT NOT NULL,
                valor_bruto DECIMAL(10,2) NOT NULL,
                desconto DECIMAL(10,2) NOT NULL,
                valor_total DECIMAL(10,2) NOT NULL,
                PRIMARY KEY (sk_venda)
);

ALTER TABLE fato_vendas MODIFY COLUMN sk_venda INTEGER COMMENT 'Chave primária da Tabela';

ALTER TABLE fato_vendas MODIFY COLUMN sk_data_venda INTEGER COMMENT 'Surrogate Key da data da venda';

ALTER TABLE fato_vendas MODIFY COLUMN sk_funcionario INTEGER COMMENT 'Surrogate Key da tabela funcionários';

ALTER TABLE fato_vendas MODIFY COLUMN sk_cliente INTEGER COMMENT 'Surrogate Key da tabela de clientes';

ALTER TABLE fato_vendas MODIFY COLUMN sk_ordem_servico INTEGER COMMENT 'Surrogate Key da tabela ordem de serviços';

ALTER TABLE fato_vendas MODIFY COLUMN venda_id INTEGER COMMENT 'Código da venda';

ALTER TABLE fato_vendas MODIFY COLUMN desconto DECIMAL(10, 2) COMMENT 'Desconto da venda';

ALTER TABLE fato_vendas MODIFY COLUMN valor_total DECIMAL(10, 2) COMMENT 'Valor total da venda';
