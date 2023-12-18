drop database if exists cimpor;

create database cimpor;

use cimpor;

create table
    camioes (
        id int(11) not null,
        matricula varchar(50) not null,
        capacidade int(11) not null
    ) engine = InnoDB;

alter table camioes add primary key (id);

alter table
    camioes change id id int(11) unsigned not null auto_increment;