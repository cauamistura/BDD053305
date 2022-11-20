-- Inserts e updates no banco "Banco_Sistema_Hospital"

use Banco_Sistema_Hospital;

INSERT INTO `Banco_Sistema_Hospital`.`tAlergia`
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

INSERT INTO `Banco_Sistema_Hospital`.`tContatoSeguranca`
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

INSERT INTO `Banco_Sistema_Hospital`.`tEndereco`
(`bdCep`, `bdCidade`, `bdBairro`)
VALUES
(89055030, 'Blumenau', 'Fortaleza'),
(89046631, 'Blumenau', 'Fortaleza');

INSERT INTO `Banco_Sistema_Hospital`.`tPlanosaude`
(`bdidPlanoSaude`, `bdNomePlano`, `bdCobertura`)
VALUES
(1, 'Unimed', 'Master'),
(2, 'Cartão de Todos', 'Intermediaria');

INSERT INTO `Banco_Sistema_Hospital`.`tDoencas`
(`idDoenca`, `bdComobirdade`)
VALUES
(1, 'Virose'),
(2, 'Gripe'),
(3, 'Covid');

INSERT INTO `Banco_Sistema_Hospital`.`tdadospessoa`
(`bdidPessoa`, `bdNome`, `bdCpf`,
`tContatoseguranca_bdidContatoSeguranca`)
VALUES
(1, 'Cauã Mistura', '091.947.409-84', 1),
(2, 'Ana Flávia', '091.947.409-84', 3);

INSERT INTO `Banco_Sistema_Hospital`.`tEndereco_has_tdadospessoa`
(`tEndereco_bdidEndereco`, `tDadosPessoa_bdidPessoa`, `bdNumeroResidencia`)
VALUES
(89055030, 1, 40);

INSERT INTO `Banco_Sistema_Hospital`.`tdadospessoa_has_tAlergia`
(`tDadosPessoa_bdidPessoa`, `tAlergia_bdidAlergia`)
VALUES
(1,  4);

INSERT INTO `Banco_Sistema_Hospital`.`tdadospessoa_has_tDoencas`
(`tDadosPessoa_bdidPessoa`, `tDoencas_idDoenca`, `bdDataAtendimento`, `bdCurado`)
VALUES
(1, 3, '2022-11-16', 0);

INSERT INTO `Banco_Sistema_Hospital`.`tdadospessoa_has_tPlanosaude`
(`tDadosPessoa_bdidPessoa`, `tPlanosaude_bdidPlanoSaude`)
VALUES
(1, 1);

