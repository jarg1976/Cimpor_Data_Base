use cimpor;
alter table camioes add primary key (id);
alter table silos add primary key (id);
alter table condutores add primary key (id);
alter table carregamentos add primary key (id);
alter table
    camioes change id id int(11) unsigned not null auto_increment;

alter table
    silos change id id int(11) unsigned not null auto_increment;

alter table
    condutores change id id int(11) unsigned not null auto_increment;

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