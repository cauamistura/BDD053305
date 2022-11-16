use banco_sistema_hospital;

INSERT INTO `banco_sistema_hospital`.`talergia`
(`bdidAlergia`, `bdAlergia`)
VALUES
(1, 'Crustáceos'),
(2, 'Urticária'),
(3, 'Dermatite Atópica'),
(4, 'lactose');

INSERT INTO `banco_sistema_hospital`.`tcontatoseguranca`
(`bdidContatoSeguranca`, `bdNomeContato`, `bdCpfContato`, `bdTelefoneContato`)
VALUES
(1, 'Ana Fávia', '041.565.429-71', '(47)98435-5285'),
(2, 'Vinicius Soares', '041.565.429-71', '(47)98435-5285'),
(3, 'Cauã Mistura', '091.947.409-84', '(47)98435-5285');


INSERT INTO `banco_sistema_hospital`.`tendereco`
(`bdCep`, `bdCidade`, `bdBairro`)
VALUES
(89055030, 'Blumenau', 'Fortaleza'),
(89046631, 'Blumenau', 'Fortaleza');

INSERT INTO `banco_sistema_hospital`.`tplanosaude`
(`bdidPlanoSaude`, `bdNomePlano`, `bdCobertura`)
VALUES
(1, 'Unimed', 'Master'),
(2, 'Cartão de Todos', 'Intermediaria');

INSERT INTO `banco_sistema_hospital`.`tdoencas`
(`idDoenca`, `bdComobirdade`)
VALUES
(1, 'Virose'),
(2, 'Gripe'),
(3, 'Covid');

INSERT INTO `banco_sistema_hospital`.`tdadospessoa`
(`bdidPessoa`, `bdNome`, `bdCpf`,
`tContatoSeguranca_bdidContatoSeguranca`)
VALUES
(1, 'Cauã Mistura', '091.947.409-84', 1),
(2, 'Ana Flávia', '091.947.409-84', 3);

INSERT INTO `banco_sistema_hospital`.`tendereco_has_tdadospessoa`
(`tEndereco_bdidEndereco`, `tDadosPessoa_bdidPessoa`, `bdNumeroResidencia`)
VALUES
(89055030, 1, 40);

INSERT INTO `banco_sistema_hospital`.`tdadospessoa_has_talergia`
(`tDadosPessoa_bdidPessoa`, `tAlergia_bdidAlergia`)
VALUES
(1,  4);

INSERT INTO `banco_sistema_hospital`.`tdadospessoa_has_tdoencas`
(`tDadosPessoa_bdidPessoa`, `tDoencas_idDoenca`, `bdDataAtendimento`, `bdCurado`)
VALUES
(1, 3, '2022-11-16', 0);

INSERT INTO `banco_sistema_hospital`.`tdadospessoa_has_tplanosaude`
(`tDadosPessoa_bdidPessoa`, `tPlanoSaude_bdidPlanoSaude`)
VALUES
(1, 1);

-- Selects

select 
	dp.*, ed.*
from tdadospessoa as dp
inner join tendereco_has_tdadospessoa as ed 
on dp.bdidPessoa = ed.tDadosPessoa_bdidPessoa