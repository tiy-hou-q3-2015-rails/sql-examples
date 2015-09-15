create database contactme_development;
\c contactme_development;

create table contacts ( id integer PRIMARY KEY,
                        first_name VARCHAR(255),
                        last_name VARCHAR(255),
                        company_name VARCHAR(255)
                      );

select * from contacts;

drop table contacts;

create table contacts ( id SERIAL PRIMARY KEY,
                        first_name VARCHAR(255),
                        last_name VARCHAR(255),
                        company_name VARCHAR(255)
                      );

insert into contacts (first_name, last_name, company_name) VALUES ('Jesse', 'Wolgamott', 'The Iron Yard');
insert into contacts (first_name, last_name, company_name) VALUES ('Billy', 'Madison', 'Billys Dad');


select * from contacts where first_name = 'Jesse';
update contacts set company_name = 'TheIronYard' where id=1
select * from contacts;

select * from contacts order by id;

insert into contacts (first_name, last_name, company_name) VALUES ('Matt', 'Keas', 'The Iron Yard');
insert into contacts (first_name, last_name, company_name) VALUES ('Brian', 'Dorton', 'The Iron Yard');


drop table contacts;

create table companies ( id SERIAL PRIMARY KEY,
                        name VARCHAR(255) NOT NULL
                      );

create table contacts ( id SERIAL PRIMARY KEY,
                        first_name VARCHAR(255) NOT NULL,
                        last_name VARCHAR(255) NOT NULL,
                        company_id INTEGER NOT NULL
                      );

insert into companies (name) VALUES ('The Iron Yard');
insert into companies (name) VALUES ('Billys Dad');

select id from companies where name = 'The Iron Yard';
select id from companies where name = 'Billys DAd';

insert into contacts (first_name, last_name, company_id) VALUES ('Jesse', 'Wolgamott', 1);
insert into contacts (first_name, last_name, company_id) VALUES ('Billy', 'Madison', 2);

insert into contacts (first_name, last_name, company_id) VALUES ('Matt', 'Keas', 1);
insert into contacts (first_name, last_name, company_id) VALUES ('Brian', 'Dorton', 1);


select * from contacts inner join companies on contacts.company_id = companies.id order by contacts.last_name DESC;

delete from companies where id = 3;
