use cimpor;

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

alter table carregamentos add primary key (id);

alter table
    carregamentos change id id int(11) unsigned not null auto_increment;

alter table carregamentos
add
    constraint `carregamentos_silos_fk` foreign key (id_silo) references silos (id);

alter table carregamentos
add
    constraint `carregamentos_camioes_fk` foreign key (id_camiao) references camioes (id);

alter table carregamentos
add
    constraint `carregamentos_condutor_fk` foreign key (id_condutor) references condutores (id);