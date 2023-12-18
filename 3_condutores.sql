use cimpor;

create table
    condutores (
        id int(11) not null,
        nome varchar(50) not null
    ) engine = InnoDB;

alter table condutores  add primary key (id);

alter table
    condutores  change id id int(11) unsigned not null auto_increment;