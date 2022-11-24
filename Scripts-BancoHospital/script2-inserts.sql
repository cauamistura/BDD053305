-- Inserts e updates no banco "banco_sistema_hospital"

use banco_sistema_hospital;

INSERT INTO `banco_sistema_hospital`.`talergia`
(`bdidAlergia`, `bdAlergia`)
VALUES
(1, 'Crustáceos'),
(2, 'Urticária'),
(3, 'Dermatite Atópica'),
(4, 'lactose'),
(5, 'Crustáceos'),
(6, 'Urticária'),
(7, 'Dermatite Atópica'),
(8, 'lactose'),
(9, 'Crustáceos'),
(10, 'Urticária');

INSERT INTO `banco_sistema_hospital`.`tcontatoseguranca`
(`bdidContatoSeguranca`, `bdNomeContato`, `bdCpfContato`, `bdTelefoneContato`)
VALUES
(1, 'Ana Fávia', '041.565.429-71', '(47)98435-5285'),
(2, 'Vinicius Soares', '041.565.429-71', '(47)98435-5285'),
(3, 'Cauã Mistura', '091.947.409-84', '(47)98435-5285'),
(4, '4', '091.947.409-84', '(47)98435-5285'),
(5, '5', '091.947.409-84', '(47)98435-5285'),
(6, '6', '091.947.409-84', '(47)98435-5285'),
(7, '7', '091.947.409-84', '(47)98435-5285'),
(8, '8', '091.947.409-84', '(47)98435-5285'),
(9, '9', '091.947.409-84', '(47)98435-5285'),
(10,'10','091.947.409-84', '(47)98435-5285');

INSERT INTO `banco_sistema_hospital`.`tendereco`
(`bdCep`, `bdCidade`, `bdBairro`)
VALUES
(89055030, 'Blumenau', 'Fortaleza'),
(89046631, 'Ilhota',   'Centro'),
(89046632, '1', '1'),
(89046633, '2', '2'),
(89046634, '3', '3'),
(89046635, '4', '4'),
(89046636, '5', '5'),
(89046637, '6', '6'),
(89046638, '7', '7'),
(89046639, '8', '8');

INSERT INTO `banco_sistema_hospital`.`tplanosaude`
(`bdidPlanoSaude`,`bdNomePlano`,`bdCobertura`)
VALUES
(1, 'Unimed', 'Master'),
(2, 'Cartão de Todos', 'Intermediaria'),
(3, 'Plano 3', 'Intermediaria'),
(4, 'Plano 4', 'Intermediaria'),
(5, 'Plano 5', 'Intermediaria'),
(6, 'Plano 6', 'Intermediaria'),
(7, 'Plano 7', 'Intermediaria'),
(8, 'Plano 8', 'Intermediaria'),
(9, 'Plano 9', 'Intermediaria'),
(10,'Plano 2', 'Intermediaria');


INSERT INTO `banco_sistema_hospital`.`tdoenca`
(`idDoenca`, `bdComobirdade`)
VALUES
(1,  'Virose'),
(2,  'Gripe' ),
(3,  'Doenca'),
(4,  'Doenca'),
(5,  'Doenca'),
(6,  'Doenca'),
(7,  'Doenca'),
(8,  'Doenca'),
(9,  'Doenca'),
(10, 'Doenca');

INSERT INTO `banco_sistema_hospital`.`tdadospessoa`
(`bdidPessoa`, `bdNome`, `bdCpf`, `tendereco_bdCep`, `tcontatoseguranca_bdidContatoSeguranca`)
VALUES
(1, 'Cauã Mistura', '091.947.409-84', 89055030, 1),
(2, 'Ana Flávia', '091.947.409-84', 89055030, 3),
(3, '1', '1', 89055030, 3),
(4, '1', '1', 89055030, 3),
(5, '1', '1', 89055030, 3),
(6, '1', '1', 89055030, 3),
(7, '1', '1', 89055030, 3),
(8, '1', '1', 89055030, 3),
(9, '1', '1', 89055030, 3),
(10, '1', '1', 89055030, 3);

INSERT INTO `banco_sistema_hospital`.`tdadospessoa_has_talergia`
(`tdadospessoa_bdidPessoa`, `talergia_bdidAlergia`)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10);

INSERT INTO `banco_sistema_hospital`.`tdadospessoa_has_tdoenca`
(`tDadosPessoa_bdidPessoa`, `tDoenca_idDoenca`, `bdDataAtendimento`, `bdCurado`)
VALUES
(1, 1, '2022-11-16', 0),
(1, 2, '2022-11-17', 0),
(1, 3, '2022-11-18', 0),
(1, 4, '2022-11-19', 0),
(1, 5, '2022-11-20', 0),
(1, 6, '2022-11-21', 0),
(1, 7, '2022-11-22', 0),
(1, 8, '2022-11-23', 0),
(1, 9, '2022-11-24', 0),
(1, 10, '2022-11-25', 0);

INSERT INTO `banco_sistema_hospital`.`tdadospessoa_has_tplanosaude`
(`tDadosPessoa_bdidPessoa`, `tPlanoSaude_bdidPlanoSaude`)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10);