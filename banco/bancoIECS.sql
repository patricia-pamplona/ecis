CREATE DATABASE IECS;

CREATE TABLE area_atuacao(
	id_area_atuacao int primary key not null generated always as identity,
	descricao varchar(50) not null
);

CREATE TABLE porte_empresa(
	id_porte_empresa int primary key not null generated always as identity,
	descricao varchar(100) not null
);

CREATE TABLE empresa(
	id_empresa int primary key not null generated always as identity,
	id_area_atuacao int not null,
	id_porte_empresa int not null,
	nome varchar(100) not null,
	email varchar(100) not null,
	cnpj varchar(14),
	estado char(2),
	CONSTRAINT fk_empresa_area_atuacao FOREIGN KEY (id_area_atuacao) REFERENCES area_atuacao(id_area_atuacao),
	CONSTRAINT fk_empresa_porte_empresa FOREIGN KEY (id_porte_empresa) REFERENCES porte_empresa(id_porte_empresa),
	CONSTRAINT ck_estados_permitidos  CHECK (estado IN ('AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'))
);

CREATE TABLE avaliacao(
	id_avaliacao int primary key not null generated always as identity,
	id_empresa int not null,
	data_resposta date not null,
	CONSTRAINT fk_avaliacao_empresa FOREIGN KEY (id_empresa) REFERENCES empresa(id_empresa)
);

CREATE TABLE etapa(
	id_etapa int primary key not null generated always as identity,
	descricao varchar(500) not null,
	img varchar(50) not null,
	ordem int not null
);

CREATE TABLE item(
	id_item int primary key not null generated always as identity,
	id_etapa int not null,
	descricao text not null,
	plano_acao text not null,
	ordem int not null,
	CONSTRAINT fk_item_etapa FOREIGN KEY (id_etapa) REFERENCES etapa(id_etapa)
);

CREATE TABLE requisito(
	id_requisito int primary key not null generated always as identity,
	id_item int not null,
	descricao text not null,
	pergunta text not null,
	ordem int not null,
	is_sga bool not null,
	is_sgc bool not null,
	is_pular_item bool not null default false,
	CONSTRAINT fk_requisito_item FOREIGN KEY (id_item) REFERENCES item(id_item)
);

CREATE TABLE resposta(
	id_resposta int primary key not null generated always as identity,
	id_avaliacao int not null,
	id_requisito int not null,
	resposta bool not null,
	CONSTRAINT fk_resposta_avaliacao FOREIGN KEY (id_avaliacao) REFERENCES avaliacao(id_avaliacao),
	CONSTRAINT fk_resposta_requisito FOREIGN KEY (id_requisito) REFERENCES requisito(id_requisito)
);

select count(resposta0_.id_resposta) as col_0_0_ from resposta resposta0_ 
inner join requisito requisito1_ on resposta0_.id_requisito=requisito1_.id_requisito 
inner join item item2_ on requisito1_.id_item=item2_.id_item 
inner join etapa etapa3_ on item2_.id_etapa=etapa3_.id_etapa 
inner join avaliacao avaliacao4_ on resposta0_.id_avaliacao=avaliacao4_.id_avaliacao 
where etapa3_.id_etapa=1 and avaliacao4_.id_empresa=1
select * from resposta;
select * from item;
select * from requisito;
select * from etapa;
select * from empresa
delete from resposta;
delete from avaliacao;
delete from empresa;

SELECT i.id_item, i.descricao, i.ordem, i.plano_acao, i.id_etapa,percentual
FROM item i 
INNER JOIN 
( SELECT t.id_item, 
 round((cast(t.pontos as decimal)/ total) * 100, 2)  as percentual 
 FROM(
	 SELECT i.id_item, 
	 sum(case when r.resposta then 1 else 0 end) pontos,
	 count(*) total 
	 from resposta r 
	 inner join avaliacao a on a.id_avaliacao = r.id_avaliacao 
	 inner join requisito rq on rq.id_requisito = r.id_requisito 
	 inner join item i on i.id_item = rq.id_item 
	 inner join etapa e on e.id_etapa = i.id_etapa 
	 where a.id_empresa = 1 
	 group by i.id_item )T order by 2 LIMIT 4 ) p ON p.id_item = i.id_item WHERE p.percentual < 100 ORDER BY i.id_etapa 
select
t.descricao, 
 round((cast(t.pontos as decimal) / total) * 100, 2)  as percentual
from (
		 select 
		 e.descricao,
		 sum(case when r.resposta then 1 else 0 end) pontos,
		 count(*) total,
			e.ordem
		 from resposta r
		 inner join avaliacao a on a.id_avaliacao = r.id_avaliacao
		 inner join requisito rq on rq.id_requisito = r.id_requisito
			inner join item i on i.id_item = rq.id_item
				inner join etapa e on e.id_etapa = i.id_etapa
		where a.id_empresa = 1
		group by e.descricao,e.ordem
		order by e.ordem
	) t
;
select i.* FROM item i
INNER JOIN (
		select
		t.id_item, 
		 round((cast(t.pontos as decimal) / total) * 100, 2)  as percentual
		from (
				 select 
				 i.id_item,
				 sum(case when r.resposta then 1 else 0 end) pontos,
				 count(*) total
				 from resposta r
				 inner join avaliacao a on a.id_avaliacao = r.id_avaliacao
				 inner join requisito rq on rq.id_requisito = r.id_requisito
					inner join item i on i.id_item = rq.id_item
						inner join etapa e on e.id_etapa = i.id_etapa
				where a.id_empresa = 1
				group by i.id_item
			) t
		order by 2
		limit 4
) p on p.id_item = i.id_item
where p.percentual < 100
or
;


SELECT
 round((t.pontos::decimal / total) * 100, 2)  as percentual
FROM(
	SELECT
	sum(case when r.resposta then 1 else 0 end) pontos,
	count(*) total
	from resposta r
	inner join avaliacao a on a.id_avaliacao = r.id_avaliacao
	inner join requisito rq on rq.id_requisito = r.id_requisito
	inner join item i on i.id_item = rq.id_item
		inner join etapa e on e.id_etapa = i.id_etapa
	where a.id_empresa = 1
	AND rq.is_sga 
)T;

select 
sum(case when r.resposta then 1 else 0 end) pontos,
count(*) total
from resposta r
inner join avaliacao a on a.id_avaliacao = r.id_avaliacao
inner join requisito rq on rq.id_requisito = r.id_requisito
inner join item i on i.id_item = rq.id_item
	inner join etapa e on e.id_etapa = i.id_etapa
where a.id_empresa = 1
AND rq.is_sgC 


 SELECT  
t.descricao,  
round((cast(t.pontos as decimal)/ total) * 100, 2)  as percentual  
FROM(  
SELECT  
i.descricao,  
sum(case when r.resposta then 1 else 0 end) pontos,  
count(*) total,  
i.ordem  
from resposta r  
inner join avaliacao a on a.id_avaliacao = r.id_avaliacao  
inner join requisito rq on rq.id_requisito = r.id_requisito  
inner join item i on i.id_item = rq.id_item  
inner join etapa e on e.id_etapa = i.id_etapa  
where a.id_empresa = 1
and e.id_etapa =1
group by i.descricao, i.ordem  
order by i.ordem  
)T  
