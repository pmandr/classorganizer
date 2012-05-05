CREATE TABLE Usuario( --pra que serve a palavra res. User?
	login VARCHAR(64) NOT NULL, --login = email do usuario
	name VARCHAR(32), NOT NULL,
	password VARCHAR(11) NOT NULL,
	date_registry DATE NOT NULL, --TENTAR TIMEDATE
	last_login DATE NOT NULL, --TENTAR TIMEDATE
	
	CONSTRAINT User_pk PRIMARY KEY(login),
	CONSTRAINT User_EmailFormat CHECK(email LIKE '%@%.%')
	)ENGINE=InnoDB;

CREATE TABLE Subject(
	id INTEGER NOT NULL AUTO_INCREMENT,
	
	codigo VARCHAR(8) NOT NULL,
	nro_turmas INTEGER DEFAULT 0,
	nome VARCHAR(20) NOT NULL UNIQUE,
	nro_cred_aula INTEGER DEFAULT 4,
	nro_cred_trab INTEGER DEFAULT 0,
	prio_mat INTEGER DEFAULT 3,
	usuario VARCHAR(50) NOT NULL,
	
	CONSTRAINT pk_mat PRIMARY KEY (codigo),
    CONSTRAINT Mat_fk_usu FOREIGN KEY (usuario) REFERENCES Usuario(email) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Mat_limites_prio CHECK(prioridade >0 AND prioridade<6),
	CONSTRAINT Mat_limites_cred CHECK(nro_cred_aula >=0 AND nro_cred_trab>=0)
	)ENGINE=InnoDB;
	
CREATE TABLE Turma(
	nro INTEGER NOT NULL,
	materia VARCHAR(8) NOT NULL,
	usuario VARCHAR(50) NOT NULL,
	prio_turma INTEGER DEFAULT 3,
	professor VARCHAR(30) DEFAULT 'Indefinido',
	prio_prof INTEGER DEFAULT 3,
	
	CONSTRAINT pkTur_turma PRIMARY KEY (nro, materia),
    CONSTRAINT fkTur_mat FOREIGN KEY (materia) REFERENCES Materia(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fkTur_usu FOREIGN KEY (usuario) REFERENCES Usuario(email) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT limitesTur_prio CHECK(prioridade >0 AND prioridade<6),
	CONSTRAINT flimitesPro_prio CHECK(ranking >0 AND ranking<6)
	)ENGINE=InnoDB;

CREATE TABLE Horario(
	turma INTEGER NOT NULL,
	materia VARCHAR(8) NOT NULL,
	dia_semana INTEGER NOT NULL,
	
	hora_ini TIME NOT NULL,
	hora_fim TIME NOT NULL,
	
	
	CONSTRAINT pk_horario PRIMARY KEY (turma,materia,dia_semana),
    CONSTRAINT fkHor_tur FOREIGN KEY (turma,materia) REFERENCES Turma(nro,materia) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT dias CHECK(dia_semana >0 AND dia_semana<8),
	CONSTRAINT horas CHECK(hora_ini < hora_fim)
	)ENGINE=InnoDB;	
	
CREATE TABLE GradeHoraria(
	ID INTEGER NOT NULL AUTO_INCREMENT,
	indice_geral_rank_profs INTEGER NOT NULL DEFAULT 1,
	indice_geral_prioridades INTEGER NOT NULL DEFAULT 1,
	cred_aula INTEGER NOT NULL,
	cred_trab INTEGER NOT NULL,
	cred_total INTEGER NOT NULL,
	
	CONSTRAINT pk_grade PRIMARY KEY (ID),
    CONSTRAINT limGH_indices CHECK(indice_geral_rank_profs >0 AND indice_geral_rank_profs<10 AND indice_geral_prioridades>0 AND indice_geral_prioridades<10)
	)ENGINE=InnoDB;	
	
CREATE TABLE TurmasDaGrade(
	grade INTEGER NOT NULL,
	turma INTEGER NOT NULL,
	materia VARCHAR(8) NOT NULL,
	
	CONSTRAINT pkTG_turmas_grade PRIMARY KEY (grade, turma),
    CONSTRAINT fkTG_grade FOREIGN KEY (grade) REFERENCES GradeHoraria(ID) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fkTG_turma FOREIGN KEY (turma,materia) REFERENCES Turma(nro,materia) ON UPDATE CASCADE ON DELETE CASCADE
	)ENGINE=InnoDB;	
	