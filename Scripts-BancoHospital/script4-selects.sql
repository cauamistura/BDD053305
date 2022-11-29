-- selects talergia
select * from talergia
order by bdidAlergia asc;

select * from talergia
where bdidAlergia = 1;

-- selects tcontatoseguranca
select * from tcontatoseguranca
order by bdidContatoSeguranca asc;

select * from tcontatoseguranca
where bdidContatoSeguranca = 1;

-- selects tdaddospessoa
select * from tdadospessoa
order by bdidPessoa asc;

select * from tdadospessoa
where bdidPessoa = 1;

-- selects talergia_has_talergia
select * from tdadospessoa_has_talergia
order by tdadospessoa_bdidPessoa asc, talergia_bdidAlergia asc;

select * from tdadospessoatdadospessoa_has_talergia
where tdadospessoa_bdidPessoa = 1;

-- selects talergia_has_tdoenca
select * from tdadospessoa_has_tdoenca
order by tdadospessoa_bdidPessoa asc, tdoenca_idDoenca asc;

select * from tdadospessoa_has_tdoenca
where tdadospessoa_bdidPessoa = 1;

-- selects tdadospessoa_has_tplanosaude
select * from tdadospessoa_has_tplanosaude
order by tdadospessoa_bdidPessoa asc, tplanosaude_bdidPlanoSaude asc;

select * from tdadospessoa_has_tplanosaude
where tdadospessoa_bdidPessoa = 1;

-- selects tdoenca
select * from tdoenca
order by idDoenca asc;

select * from tdoenca
where idDoenca = 1;

-- selects tendereco
select * from tendereco
order by bdCep asc;

select * from tendereco
where bdCep = 89046631;

-- selects tplanosaude
select * from tplanosaude
order by bdidPlanoSaude asc;

select * from tplanosaude
where bdidPlanoSaude = 1;


-- selects com Join
select  
	d.bdCpf 		 as CPF, 
        d.bdNome         	 as Nome,
        ed.bdCep         	 as CEP,
        ed.bdCidade 	 	 as Cidade,
        ed.bdBairro 	 	 as Bairro, 
        cs.bdNomeContato 	 as Contato_de_Seguraca,
        ps.bdNomePlano 	 	 as Plano_de_Saude,
        a.bdAlergia      	 as Alergia,
        dc.bdComobirdade 	 as Comorbidade, 
        dd.bdDataAtendimento     as Atendimento
from tdadospessoa as d
-- puxando dados do endereco
inner join tendereco			as ed on d.tendereco_bdCep = ed.bdCep
-- puxando dados do contato de segurança
inner join tcontatoseguranca 		as cs on d.tcontatoseguranca_bdidContatoSeguranca = cs.bdidContatoSeguranca
-- puxando dados das alergias
inner join tdadospessoa_has_talergia 	as da on d.bdidPessoa = da.tdadospessoa_bdidPessoa
inner join talergia			as a  on da.talergia_bdidAlergia = da.talergia_bdidAlergia
-- puxando dados das comobirdades
inner join tdadospessoa_has_tdoenca  	as dd on d.bdidPessoa = dd.tdadospessoa_bdidPessoa
inner join tdoenca			as dc on dd.tdoenca_idDoenca = dc.idDoenca
-- puxando dados do plano de saude 
inner join tdadospessoa_has_tplanosaude as dp on d.bdidPessoa = dp.tdadospessoa_bdidPessoa
inner join tplanosaude			as ps on dp.tplanosaude_bdidPlanoSaude = ps.bdidPlanoSaude;
