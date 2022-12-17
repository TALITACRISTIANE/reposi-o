/*Comando drop -> apaga a base de dados (if exists - se existir)

create database -> cria a base de dados

use -> acessa uma base de dados

create table -> cria uma tabela.
primary key -> chave primária da tabela
not null -> não pode nulo - digitação obrigatória de valor
tipo de dados char e varchar -> tipo texto 
					(char geralmente quantidade conhecida)
int ou integer -> números inteiros
double -> números reais
date -> tipo data
					
*/


drop database if exists academia;

create database academia character set utf8 COLLATE utf8_general_ci;

use academia;

create table endereco(
	cep char(9) primary key,
	rua varhar(60)not null,
	bairro varchar(40)not null,
	cidade varchar(40)not null,
	uf char(2)not null);

create table aluno(
	matricula int primary key,
	nome varchar(60)not null,
	telefone varchar(15)not null,
	cpf char(12)not null,
	rg varchar(20)not null,
	datanascimento date not null,
	cep char(9)not null,
	numerocasa int not null,
	complemento varchar(30)not null,
	foreign key(cep)references endereco(cep));