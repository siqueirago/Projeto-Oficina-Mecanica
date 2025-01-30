
Create database oficinamecanica;

Use oficinamecanica;

-- Tabela Cliente
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(100),
    Telefone VARCHAR(11)
);

-- Tabela Veiculo
CREATE TABLE Veiculo (
    Chassi INT PRIMARY KEY,
    Placa VARCHAR(7) UNIQUE NOT NULL,
    Modelo VARCHAR(45),
    Ano INT,
    Cor VARCHAR(45),
    Cliente_idCliente INT NOT NULL,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

-- Tabela Equipe
CREATE TABLE Equipe (
    idEquipe INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Equipe VARCHAR(45) NOT NULL,
    Mecanico_idMecanico INT NOT NULL,
    FOREIGN KEY (Mecanico_idMecanico) REFERENCES Mecanico(idMecanico)
);

-- Tabela Servico
CREATE TABLE Servico (
    idServico INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(255) NOT NULL,
    Valor_Mao_de_Obra DECIMAL(10,2)
);

-- Tabela Ordem_Servico
CREATE TABLE Ordem_Servico (
    idOrdem_Servico INT PRIMARY KEY AUTO_INCREMENT,
    Data_Emissao DATE,
    Valor_Total DECIMAL(10,2),
    Status ENUM('Em aberto', 'Em andamento', 'Concluída', 'Cancelada'),
    Data_Conclusao DATE,
    Veiculo_Chassi INT,
    Cliente_idCliente INT,
    FOREIGN KEY (Veiculo_Chassi) REFERENCES Veiculo(Chassi),
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

-- Tabela Mecanico
CREATE TABLE Mecanico (
    idMecanico INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Especialidade ENUM('Mecânica geral', 'Elétrica', 'Pintura', 'Funilaria')
);

-- Tabela Peça
CREATE TABLE Peca (
    idPecas INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(100) NOT NULL,
    Valor_Unitario DECIMAL(10,2)
);

-- Tabela Servico_OS (tabela de junção)
CREATE TABLE Servico_OS (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Servico_idServico INT,
    OS_idOrdem_Servico INT,
    Quantidade INT,
    FOREIGN KEY (Servico_idServico) REFERENCES Servico(idServico),
    FOREIGN KEY (OS_idOrdem_Servico) REFERENCES Ordem_Servico(idOrdem_Servico)
);

-- Tabela OS_Peça (tabela de junção)
CREATE TABLE OS_Peca (
    id INT PRIMARY KEY AUTO_INCREMENT,
    OS_idOrdem_Servico INT,
    Pecas_idPecas INT,
    Quantidade INT,
    FOREIGN KEY (OS_idOrdem_Servico) REFERENCES Ordem_Servico(idOrdem_Servico),
    FOREIGN KEY (Pecas_idPecas) REFERENCES Peca(idPecas)
);