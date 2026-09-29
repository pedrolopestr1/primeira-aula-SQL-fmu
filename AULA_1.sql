create table agenda(
	id       int         not null,
	nome     varchar(50) not null,
	dt_nasc  date        not null,
	telefone varchar(30)     null,
	email    varchar(30) not null
);

-- popular tabela(inserção de dados)
-- sem atributo (não é boa pratica)
INSERT INTO agenda(id, nome, dt_nasc, telefone, email)
	values(1,'moises','10/12/2005','11999993025','moises@gmail.com');

--insert com atributo(**boas praticas)
INSERT INTO agenda(id, nome, dt_nasc, telefone, email)
	values(2,'gustavo','15/07/2018','11999993026','gustavo@gmail.com');

INSERT INTO agenda(id, nome, dt_nasc, telefone, email)
	values(3,'ana','30/08/2015','11999993027','ana@gmail.com');

INSERT INTO agenda(id, nome, dt_nasc, telefone, email)
	values(4,'fabio','01/03/2012','11999993028','fabio@gmail.com');

INSERT INTO agenda(id, nome, dt_nasc, telefone, email)
	values(5,'daniela','05/06/2010','11999993029','daniela@gmail.com');