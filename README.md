# Projeto Oficina Mecânica
## Descrição do Projeto
Este projeto tem como objetivo desenvolver um sistema de gerenciamento de banco de dados para uma oficina mecânica. O sistema permitirá o cadastro de clientes, veículos, mecânicos, serviços, peças, equipes, além do registro de ordens de serviço, incluindo informações sobre os serviços realizados, peças utilizadas e mecânicos responsáveis.

O projeto foi desenvolvido utilizando o modelo de dados relacional, com o objetivo de garantir a integridade e a consistência dos dados. O esquema do banco de dados foi projetado para atender às necessidades de uma oficina mecânica, permitindo o controle eficiente de todos os aspectos do negócio.

## Funcionalidades
**O sistema permitirá:**

* Cadastrar clientes, veículos, mecânicos, serviços e peças.
* Registrar ordens de serviço, incluindo informações sobre os serviços realizados, peças utilizadas e mecânicos responsáveis.
* Consultar informações sobre clientes, veículos, mecânicos, serviços e peças.
* Gerar relatórios sobre as ordens de serviço, incluindo informações sobre os serviços realizados, peças utilizadas e mecânicos responsáveis.
* Controlar o estoque de peças.
* Gerenciar o agendamento de serviços.

## Tecnologias Utilizadas
* MySQL: Banco de dados relacional utilizado para armazenar os dados do sistema.
* SQL: Linguagem de consulta estruturada utilizada para interagir com o banco de dados.

## Estrutura do Banco de Dados
O esquema do banco de dados é composto pelas seguintes tabelas:

* Cliente: Armazena informações sobre os clientes da oficina.
* Veiculo: Armazena informações sobre os veículos dos clientes.
* Equipe: Armazena informações sobre as equipes de mecânicos.
* Servico: Armazena informações sobre os serviços oferecidos pela oficina.
* Ordem_Servico: Armazena informações sobre as ordens de serviço.
* Mecanico: Armazena informações sobre os mecânicos da oficina.
* Peça: Armazena informações sobre as peças utilizadas nos serviços.
* Servico_OS: Tabela de junção entre as tabelas Servico e Ordem_Servico.
* OS_Peça: Tabela de junção entre as tabelas Ordem_Servico e Peça.

## Diagrama do Banco de Dados
O diagrama do banco de dados pode ser visualizado na imagem [Modelo](https://github.com/siqueirago/Projeto-Oficina-Mecanica/blob/main/Modelo%20ER.png).

## Como Executar o Projeto
* Clone o repositório.
* Instale o MySQL.
* Crie um banco de dados com o nome "oficina_mecanica".
* Execute os scripts SQL para criar as tabelas e inserir os dados.
## Contribuições
Contribuições são sempre bem-vindas! Sinta-se à vontade para abrir issues e enviar pull requests.

## Licença
Este projeto está sob a licença MIT.

## Contato
Em caso de dúvidas, entre em contato.
