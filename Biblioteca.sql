create table Pedido(
Codigo_Cliente int,
Codigo_Pedido int,
DataDeCompra date,
Valor_pedido double
);
create table Estoque(
Quantidade_Estoque int,
Codigo_Editora int,
Codigo_Livro int
);
create table Editora(
Codigo_Editora int primary key,
Telefone  varchar(20),
Email varchar(50),
Nome_Contato varchar(100)
);
create table Cliente(
Codigo_Cliente int primary key,
Email varchar(50),
Nome varchar(100),
Telefone varchar(30),
Endereco varchar(100),
Rua varchar(100),
Bairro varchar(100),
Cidade varchar(50),
Estado varchar(50)
);
create table Pessoa_Juridica(
CNPJ varchar(50),
IE varchar(50)
);
create table Pessoa_Fisica(
CPF varchar(14),
RG varchar(12)
);