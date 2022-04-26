INSERT INTO etapa(descricao, ordem, img) values ('Melhoria', 6, 'act.svg'); 

INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Melhoria contínua', 
		'Afim de garantir um processo de melhoria contínua, a organização deve realizar avaliações para identificar opotunidades de melhoria a partir do seu desempenho ambiental e estabelecer ações para alcançá-las.',
		6, 1);


INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Determinar oportunidades de melhoria segundo o desempenho ambiental, os resultados da auditoria interna e a análise crítica pela alta direção, e implementar ações necessárias para alcance dos resultados pretendidos.',
		'A organização determina as oportunidades de melhoria contínua a partir de seu desempenho ambiental, dos resultados da auditoria, das análises críticas pela alta direção e implementa as ações necessárias para alcançar os resultados pretendidos?', 
		32, 1, true, false, false );
		
INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Não conformidade e Ação corretiva', 
		'A organização deve realizar avaliações constantes para identificar e corrigir não conformidades, afim de evitar ou/e mitigar seus impactos tanto éticos como legais ambientais.',
		6, 2);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Reagir (1) com ação para controlá-la e corrígi-la, e (2) lidar com as consequências inclusive mitigando impactos ambientais adversos',
		'A organização toma ações para controlar e corrigir não conformidades e suas consequências, inclusive mitigando impactos ambientais adversos?', 
		33, 1, true, true, true );

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Avaliar a necessidade de ações para eliminar as causas a fim de não se repetir (1) analisando criticamente , (2)determinando a causa (3)determinando se não conformidades similares existem ou se tem potenciais de ocorrer.',
		'A organização avalia ações para eliminar as causas das não conformidades?', 
		33, 2, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Implementar alguma ação necessária',
		'A organização implementa ações corretivas necessárias?', 
		33, 3, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Analisar criticamente a eficácia das ações corretivas tomadas',
		'A organização analisa criticamente a eficácia das ações corretivas que são tomadas?', 
		33, 4, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Fazer mudanças no SGA, se necessário',
		'A organização revisa e faz mudanças de suas conformidades éticas e legais para com o meio ambiente, se necessário?', 
		33, 5, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('As ações corretivas são apropriadas à significância dos efeitos das não conformidades encontradas e dos impactos ambientais.',
		'As ações corretivas são apropriadas à significância dos impactos ambientais?', 
		33, 6, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização deve reter informação documentada da natureza da não conformidade e ações subsequentes, além dos resultados das ações corretivas como evidência',
		'A organização mantém informação documentada da natureza das não conformidades, as ações tomadas, e o resultado das ações corretivas?', 
		33, 7, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Melhorar continuamente a adequação, suficiência e eficácia a fim de aumentar o desempenho ambiental',
		'A organização melhora continuamente com adequação, suficiência e eficácia para aumentar o desempenho ambiental?', 
		33, 8, true, true, false );
