drop table if exists people;
create table people (id bigint not null auto_increment, email varchar(255), first_name varchar(255), last_name varchar(255), primary key (id));
alter table people add constraint people_email unique (email);