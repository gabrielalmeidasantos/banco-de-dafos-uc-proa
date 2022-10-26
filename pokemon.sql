create database BD_Pokemon;
use BD_Pokemon;
create table tb_treinador (
	pk_idTreinador int auto_increment primary key,
    nome varchar (100),
	aparencia varchar (50),
    gostos varchar (200),
    dataNasc date
);

select * from tb_treinador;

create table tb_pokemon (
	pk_idPokemon int,
    nome varchar (100),
    geracao int (1),
    tipo1 varchar(30),
    tipo2 varchar (30),
    HP int (3),
    ataque int (3),
    defesa int (3),
    ataqueEspecial int (3),
    defesaEspecial int (3),
    agilidade int (3),
    forma varchar (50)
);

create table tb_mochila (
	pk_idMochila int auto_increment primary key,
    fk_idTreinador int,
    fk_idPokemon int,
    slot int (1)
);

create table tb_fazenda (
	pk_idFazenda int auto_increment primary key,
    fk_idTreinador int,
    fk_idPokemon int,
    slot int
);

insert into tb_treinador (nome, aparencia,gostos,dataNasc) values ('Bea', 'Tatuada cabelo liso', 'Dançarina tiktoker', '2003-05-10');

drop table tb_pokemon;

select * from tb_pokemon;

insert into tb_pokemon (pk_idPokemon, nome, geracao, tipo1, tipo2, HP, ataque, defesa, ataqueEspecial, defesaEspecial, agilidade, forma) values (330,'Flygon',3,'Terrestre','Dragão',80,100,80,80,80,100,null);

insert into tb_mochila (fk_idTreinador, fk_idPokemon, slot) values (1,25,1);
insert into tb_mochila (fk_idTreinador, fk_idPokemon, slot) values (1,4,2);
insert into tb_mochila (fk_idTreinador, fk_idPokemon, slot) values (1,330,3);
insert into tb_mochila (fk_idTreinador, fk_idPokemon, slot) values (1,111,4);
insert into tb_mochila (fk_idTreinador, fk_idPokemon, slot) values (1,723,5);
insert into tb_mochila (fk_idTreinador, fk_idPokemon, slot) values (1,333,6);

select * from tb_mochila where fk_idTreinador = 1;
