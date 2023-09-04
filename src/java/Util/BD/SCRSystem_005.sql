
create table solicitacao (
	id_solicitacao serial primary key,
	datahora_solicitacao int not null,
	datahorainicioutilizacao_solicitacao int not null,
	qtdhorasutilizacao_solicitacao int not null,
	status_solicitacao varchar(11) not null
);

create table participante (
	id_participante serial primary key,
	nomecompleto_participante varchar(500) not null,
	curso_participante varchar(150) not null,
	cpf_participante varchar(11) not null,
	vinculo_participante varchar(23) not null,
	solicitante_participante boolean not null,
	id_solicitacao int not null,
	constraint fk_participante_solicitacao foreign key(id_solicitacao) references solicitacao(id_solicitacao)
);

create table administrador (
	id_administrador serial primary key,
	nome_administrador varchar(80) not null,
	emailinstitucional_administrador varchar(200) not null,
	senha_administrador varchar(200) not null,
	permissaoaprovacao_administrador boolean not null
);

INSERT INTO administrador(
            nome_administrador, emailinstitucional_administrador, 
            senha_administrador, permissaoaprovacao_administrador)
    VALUES ('Murilo da Secretaria', 'joao@etec.sp.gov.br', '123456', false);

INSERT INTO administrador(
            nome_administrador, emailinstitucional_administrador, 
            senha_administrador, permissaoaprovacao_administrador)
    VALUES ('Matheus da Direção', 'pedro@etec.sp.gov.br', '123456', true);