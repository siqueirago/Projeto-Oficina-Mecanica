use oficinamecanica;
-- Tabela Cliente
INSERT INTO Cliente (Nome, Endereco, Telefone) VALUES
('João da Silva', 'Rua das Flores, 123', '85999998888'),
('Maria Souza', 'Avenida Paulista, 456', '85988887777'),
('Carlos Pereira', 'Rua Augusta, 789', '85977776666');

-- Tabela Veiculo
INSERT INTO Veiculo (Chassi, Placa, Modelo, Ano, Cor, Cliente_idCliente) VALUES
(1234567, 'ABC1234', 'Fiat Uno', 2010, 'Prata', 1),
(9876543, 'XYZ9876', 'Chevrolet Onix', 2015, 'Branco', 2),
(1357911, 'DEF4567', 'Volkswagen Gol', 2020, 'Vermelho', 3);

-- Tabela Equipe
INSERT INTO Equipe (Nome_Equipe, Mecanico_idMecanico) VALUES
('Equipe 1', 1),
('Equipe 2', 2),
('Equipe 3', 3);

-- Tabela Servico
INSERT INTO Servico (Descricao, Valor_Mao_de_Obra) VALUES
('Troca de óleo', 100.00),
('Revisão geral', 300.00),
('Troca de pneus', 200.00);

-- Tabela Ordem_Servico
INSERT INTO Ordem_Servico (Data_Emissao, Valor_Total, Status, Data_Conclusao, Veiculo_Chassi, Cliente_idCliente) VALUES
('2023-10-26', 500.00, 'Concluída', '2023-10-28', 1234567, 1),
('2023-10-27', 800.00, 'Em andamento', NULL, 9876543, 2),
('2023-10-28', 300.00, 'Em aberto', NULL, 1357911, 3);

-- Tabela Mecanico
INSERT INTO Mecanico (Nome, Especialidade) VALUES
('José Silva', 'Mecânica geral'),
('Maria Souza', 'Elétrica'),
('Carlos Pereira', 'Pintura');

-- Tabela Peça
INSERT INTO Peca (Descricao, Valor_Unitario) VALUES
('Filtro de óleo', 20.00),
('Pneu', 150.00),
('Bateria', 250.00);

-- Tabela Servico_OS (tabela de junção)
INSERT INTO Servico_OS (Servico_idServico, OS_idOrdem_Servico, Quantidade) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 2, 2);

-- Tabela OS_Peça (tabela de junção)
INSERT INTO OS_Peca (OS_idOrdem_Servico, Pecas_idPecas, Quantidade) VALUES
(1, 1, 1),
(1, 2, 4),
(2, 3, 1);