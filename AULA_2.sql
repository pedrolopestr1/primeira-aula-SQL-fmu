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

--listar todos os dados
select * FROM agenda;
--boa pratica do select -> escolher colunas que eu quero listar
select nome, dt_nasc, email
from agenda
	
--classificar/ordenar
select nome, dt_nasc, email
	from agenda
	order by nome asc; --DESC ; --ASC/DESC
	
--filtros basico(where)
select nome, dt_nasc, email
	from agenda
where nome = 'ana';
		
select nome, dt_nasc, email
	from agenda
where nome <> 'ana'; -- diferente ou !=

select nome, dt_nasc, email
	from agenda
where dt_nasc > '2005-12-10'; -- maior

--excluir tabela sem a clausula where
select * from agenda;

delete from agenda;
		
-- excluir registros com filtro - *boa pratica
delete from agenda
	where id = 1; --sempre com o id
	
select * from agenda
	where id = 1;

--remove da lista os dados duplicados DISTINCT
select DISTINCT * FROM agenda;


-- ALTERA UPDATE
/*
	sintaxe
	update <tabela>
	set <coluna> = <valor>
	where id = <chave>
*/
	UPDATE agenda
		SET telefone = '50501122'
	WHERE id = 2;	

-- tarefa me sala de aula 
/* criar uma tabela chamada pessoa
 * o planejamento criou os modelos conceituais
 * o modelo logico e o fisico
 * a partir do modelo fisico, criar a tabela
 * 	id_pes		int		not null
 * 	pes_nome		varchar(50)
 * 	pes_salario decimal (8,2)
 */


CREATE TABLE Pessoa (
   ID_pes     INTEGER NOT NULL,
   pes_nome    VARCHAR(50) NOT NULL,
   pes_salario DECIMAL(8,2)   
);

select * from Pessoa;

INSERT INTO Pessoa (id_pes, pes_nome, pes_salario)
              VALUES(1, 'Ana', 100);

INSERT INTO Pessoa (id_pes, pes_nome, pes_salario)
              VALUES(2, 'Paulo', 200);

INSERT INTO Pessoa (id_pes, pes_nome, pes_salario)
                VALUES(3, 'João', null);

INSERT INTO Pessoa (id_pes, pes_nome, pes_salario)
                VALUES(4, 'Antonio', 100);

SELECT avg(pes_salario)
	FROM Pessoa ; --> 133,333
	
	SELECT sum(pes_salario)
	FROM Pessoa; --> 400,00
	
	SELECT min(pes_salario)
	FROM Pessoa; --> 100,00
	
	SELECT max(pes_salario)
	FROM Pessoa; --> 200,00
	
	SELECT count(pes_salario)
	FROM Pessoa; --> 3
	
	SELECT count(ID_pes)
	FROM Pessoa; --> 4

	SELECT count(*)
	FROM Pessoa; --> 4
	
	SELECT count(distinct pes_salario)
	FROM Pessoa; --> 2 (de 100,00)
	
	-- calcular media sem o avg()
	SELECT sum(pes_salario) / count(pes_salario)
	FROM Pessoa;
	
	-- arrendondando com dois digitos depois da virgula 
	SELECT ROUND(SUM)(pes_salario) / COUNT(pes_salario), 2)
		FROM Pessoa;


CREATE TABLE Funcionarios (
   ID_fun           INTEGER        NOT NULL,
   fun_nome         VARCHAR(50)     NOT NULL,
   fun_cargo        VARCHAR(50)     NOT NULL,
   fun_dta_contrato DATE            NOT NULL,
   fun_salario      DECIMAL(8,2)    NOT NULL,
   fun_comm         DECIMAL(8,2),
   ID_depto INTEGER NOT NULL
);

-- insert funcionário
INSERT INTO Funcionarios
(ID_fun, fun_nome, fun_cargo, fun_dta_contrato, fun_salario, fun_comm, id_depto)
VALUES(7369, 'ANA MARIA', 'ATENDENTE', '17/12/1980', 1800.00, 0, 20);

INSERT INTO Funcionarios
(ID_fun, fun_nome, fun_cargo, fun_dta_contrato, fun_salario, fun_comm, id_depto)
VALUES(7499, 'HERNANDEZ', 'VENDEDOR', '20/02/1981', 1800.00, 0, 30);

INSERT INTO Funcionarios
(ID_fun, fun_nome, fun_cargo, fun_dta_contrato, fun_salario, fun_comm, id_depto)
VALUES(7521, 'WILLIAN',	'VENDEDOR', '22/02/1981', 3800.00, 1250.00, 30);

INSERT INTO Funcionarios
(ID_fun, fun_nome, fun_cargo, fun_dta_contrato, fun_salario, fun_comm, id_depto)
VALUES(7566, 'JOÃO SALDANHA', 'GERENTE', '02/04/1981', 10000.00, 0, 20);

INSERT INTO Funcionarios
(ID_fun, fun_nome, fun_cargo, fun_dta_contrato, fun_salario, fun_comm, id_depto)
VALUES(7654, 'MARIANA', 'VENDEDOR', '28/09/1988', 4300.00, 0, 30);

INSERT INTO Funcionarios
(ID_fun, fun_nome, fun_cargo, fun_dta_contrato, fun_salario, fun_comm, id_depto)
VALUES(7698, 'BRUNO', 'GERENTE', '01/05/1997', 10000.00, 0, 30);

INSERT INTO Funcionarios
(ID_fun, fun_nome, fun_cargo, fun_dta_contrato, fun_salario, fun_comm, id_depto)
VALUES(7782, 'CLARICE', 'GERENTE', '09/06/2001', 10000.00, 0, 10);

INSERT INTO Funcionarios
(ID_fun, fun_nome, fun_cargo, fun_dta_contrato, fun_salario, fun_comm, id_depto)
VALUES(7788, 'SANDRA', 'ANALISTA', '09/12/2004', 8500.00, 0, 20);

INSERT INTO Funcionarios
(ID_fun, fun_nome, fun_cargo, fun_dta_contrato, fun_salario, fun_comm, id_depto)
VALUES(7839, 'ROBERT', 'CEO', '17/11/1979', 45000.00, 0, 10);

INSERT INTO Funcionarios
(ID_fun, fun_nome, fun_cargo, fun_dta_contrato, fun_salario, fun_comm, id_depto)
VALUES(7844, 'DANIEL', 'VENDEDOR', '08/09/1981', 3200.00, 0, 30);

INSERT INTO Funcionarios
(ID_fun, fun_nome, fun_cargo, fun_dta_contrato, fun_salario, fun_comm, id_depto)
VALUES(7878, 'AMANDA', 'ATENDENTE', '12/01/1983', 1100.00, 0, 20);

INSERT INTO Funcionarios
(ID_fun, fun_nome, fun_cargo, fun_dta_contrato, fun_salario, fun_comm, id_depto)
VALUES(7900, 'JAIME', 'ATENDENTE', '03/12/1985', 1299.00, 0, 30);

INSERT INTO Funcionarios
(ID_fun, fun_nome, fun_cargo, fun_dta_contrato, fun_salario, fun_comm, id_depto)
VALUES(7902, 'FRANCISCO', 'ANALISTA', '03/12/1985', 8500.00, 0, 20);

INSERT INTO Funcionarios
(ID_fun, fun_nome, fun_cargo, fun_dta_contrato, fun_salario, fun_comm, id_depto)
VALUES(7934, 'MURILO', 'ATENDENTE', '23/01/1982', 1300.00, 0, 10);

select * from Funcionarios;		

CREATE TABLE Departamento (
   ID_depto      INTEGER     NOT NULL,
   depto_nome    VARCHAR(50) NOT NULL,
   depto_cidade  VARCHAR(40) NOT NULL,
   depto_uf      CHAR(2)     NOT NULL
);

-- insert departamentos 
INSERT INTO Departamento
(ID_depto, depto_nome, depto_cidade, depto_uf)
VALUES(10, 'CONTABILIDADE', 'SÃO PAULO', 'SP');

INSERT INTO Departamento
(ID_depto, depto_nome, depto_cidade, depto_uf)
VALUES(20, 'TI', 'FLORIANOPOLIS', 'SC');

INSERT INTO Departamento
(ID_depto, depto_nome, depto_cidade, depto_uf)
VALUES(30, 'VENDAS', 'CURITIBA', 'PR');

INSERT INTO Departamento
(ID_depto, depto_nome, depto_cidade, depto_uf)
VALUES(40, 'OPERAÇÃO', 'RECIFE', 'PE');
	
select * from Departamento;	

select fun.fun_nome as nome, fun.fun_cargo cargo,
	   fun.fun_dta_contrato "data de contrato",
	   fun.fun_salario as salario,
	   dep.depto_nome as departamento, dep.depto_cidade cidade,
	   dep.depto_uf UF
	from   Funcionarios fun
inner join Departamento dep ON (dep.ID_depto = fun.ID_depto);
