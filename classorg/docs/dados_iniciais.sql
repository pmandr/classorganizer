INSERT INTO  `classorganizer`.`usuario` (
`email` ,
`nome` ,
`senha` ,
`dataCadastro`
)
VALUES (
'paulo__mario@hotmail.com',  'Mario Mario',  'abc',  '2012-01-15'
);

INSERT INTO  `classorganizer`.`usuario` (
`email` ,
`nome` ,
`senha` ,
`dataCadastro`
)
VALUES (
'paulomariomariomario@gmail.com',  'Paulo Mario',  'abc',  '2012-01-25'
);

INSERT INTO  `classorganizer`.`usuario` (
`email` ,
`nome` ,
`senha` ,
`dataCadastro`
)
VALUES (
'psicopri@gmail.com',  'Priscila',  'abc',  '2012-01-21'
);
/* //==================================================================== */
INSERT INTO `classorganizer`.`materia` 
(`codigo`, `nro_turmas`, `nome`, `nro_cred_aula`, `nro_cred_trab`, `prio_mat`, `usuario`)
 ('SCC204', NULL, 'POO', '4', '2', '3', 'psicopri@gmail.com'),
('SSC202', NULL, 'ICC2', '4', '2', '3', 'psicopri@gmail.com'),
 ('SSC223', NULL, 'BANCO DE DADOS', '4', '2', '3', 'psicopri@gmail.com'),
 ('sma301', NULL, 'CALC 3', '6', '0', '3', 'psicopri@gmail.com'),
 ('SME223', NULL, 'CALC NUM 2', '4', '5', '3', 'psicopri@gmail.com'),
 ('SSC999', NULL, 'HAKUNA MATATA', '4', '2', '1', 'psicopri@gmail.com')
/* //========================================================================
 */
INSERT INTO  `classorganizer`.`professor` (
`id` ,
`nome` ,
`ranking` ,
`usuario`
)
VALUES (
NULL ,  'F PAULOVIC',  '3',  'psicopri@gmail.com'
), (
NULL ,  'VEIGAS',  '3',  'psicopri@gmail.com'
), (
NULL ,  'MARCIO',  '2',  'psicopri@gmail.com'
), (
NULL ,  'LUNIA',  '4',  'psicopri@gmail.com'
), (
NULL ,  'NIEDJA',  '4',  'psicopri@gmail.com'
), (
NULL ,  'MARCOS',  '2',  'psicopri@gmail.com'
), (
NULL ,  'ANDRADE',  '4',  'psicopri@gmail.com'
), (
NULL ,  'CARLOTA',  '1',  'psicopri@gmail.com'
), (
NULL ,  'SEIJI',  '2',  'psicopri@gmail.com'
), (
NULL ,  'CRUZ',  '2',  'psicopri@gmail.com'
);
/* //=============================================================== */
INSERT INTO  `classorganizer`.`turma` (
`nro` ,
`prioridade` ,
`materia` ,
`professor` ,
`usuario`
)
VALUES (
NULL ,  '2',  'SSC202',  '6',  'psicopri@gmail.com'
), (
NULL ,  '4',  'SSC202',  '5',  'psicopri@gmail.com'
), (
NULL ,  '5',  'SCC204',  '7',  'psicopri@gmail.com'
), (
NULL ,  '1',  'SSC999',  '3',  'psicopri@gmail.com'
), (
NULL ,  '5',  'SME223',  '8',  'psicopri@gmail.com'
), (
NULL ,  '5',  'sma301',  '3',  'psicopri@gmail.com'
), (
NULL ,  '3',  'SME223',  '4',  'psicopri@gmail.com'
), (
NULL ,  '3',  'SME223',  '2',  'psicopri@gmail.com'
), (
NULL ,  '4',  'sma301',  '8',  'psicopri@gmail.com'
), (
NULL ,  '1',  'SSC223',  '10',  'psicopri@gmail.com'
);
/* //============================================================== */
INSERT INTO  `classorganizer`.`horario` (
`hora_ini` ,
`hora_fim` ,
`dia_semana` ,
`turma`
)
VALUES (
CURTIME( ) ,  '15:00:00',  '2',  '3'
), (
'08:00:00',  '10:00:00',  '3',  '3'
), (
'10:00:00',  '12:00:00',  '2',  '5'
), (
'14:00:00',  '16:00:00',  '4',  '5'
), (
'08:00:00',  '10:00:00',  '2',  '9'
),('07:00:00', '12:00:00', '4', '10'), 
('12:00:00', '23:00:00', '5', '6'), 
('16:00:00', '23:00:00', '3', '4'), 
('09:00:00', '12:00:00', '4', '8'), 
('12:00:00', '18:00:00', '6', '2');

/* //=================================================== */
INSERT INTO  `classorganizer`.`materia` (
`codigo` ,
`nro_turmas` ,
`nome` ,
`nro_cred_aula` ,
`nro_cred_trab` ,
`prioridade` ,
`usuario`
)
VALUES (
'SCC250',  '2',  'Comp Grafica',  '4',  '2',  '2',  'paulomariomariomario@gmail.com'
), (
'SCC0251',  '1',  'Process. de Imagens',  '3',  '0',  '1',  'paulomariomariomario@gmail.com'
);


/* //=================================================== */
INSERT INTO  `classorganizer`.`professor` (
`id` ,
`nome` ,
`ranking` ,
`usuario`
)
VALUES (
NULL ,  'F PAULOVICH',  '2',  'paulomariomariomario@gmail.com'
), (
NULL ,  'Moacir Ponti Junior',  '4',  'paulomariomariomario@gmail.com'
);


