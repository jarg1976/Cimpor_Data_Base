use cimpor;

create table
silos (
    id int(11) not null,
    capacidade int(11) not null
) engine = InnoDB;

alter table silos add primary key (id);

alter table
    silos change id id int(11) unsigned not null auto_increment;