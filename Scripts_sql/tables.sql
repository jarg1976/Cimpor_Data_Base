drop database if exists cimpor;
create database cimpor;
use cimpor;
create table
    camioes (
        id int(11) not null,
        matricula varchar(50) not null,
        capacidade int(11) not null
    ) engine = InnoDB;
create table
  silos (
      id int(11) not null,
      capacidade int(11) not null
  ) engine = InnoDB;
create table
  condutores (
      id int(11) not null,
      nome varchar(50) not null
  ) engine = InnoDB;
create table
  carregamentos (
      id int(11) not null,
      id_silo int(11) unsigned not null,
      id_camiao int(11) unsigned not null,
      id_condutor int(11) unsigned not null,
      data_entrada timestamp not NULL,
      data_saida timestamp not NULL,
      valor_carregamento int(11) not null
  ) engine = InnoDB;