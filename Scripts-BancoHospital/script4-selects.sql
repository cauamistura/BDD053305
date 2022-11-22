-- Selects

select 
	dp.*, ed.*
from tdadospessoa as dp
inner join tEndereco_has_tdadospessoa as ed 
on dp.bdidPessoa = ed.tDadosPessoa_bdidPessoa