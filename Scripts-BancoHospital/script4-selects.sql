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
