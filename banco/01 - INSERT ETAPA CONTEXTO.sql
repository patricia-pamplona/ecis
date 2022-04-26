INSERT INTO etapa(descricao, ordem, img) values ('Contexto', 1, 'context.svg'); 

INSERT INTO item (descricao,plano_acao, id_etapa, ordem) 
values ('Entendendo a organização e seu contexto', 
		'A organização deve mapear questões externas e internas, dentro de seu contexto de atuação,, que possam impactar os resultados do seu sistema de gestão ambiental. Essas questões e seus desdobramentos devem ser monitoradas afim de mitigar os impactos nos processos de trabalhos e de manter as operações da organização sustentáveis.',
		1, 1);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização deve determinar questões externas e internas que sejam pertinentes para o seu propósito e que afetem sua capacidade de alcançar os resultados pretendidos do seu sistema de gestão ambiental. Essas questões devem incluir as condições ambientais que afetam ou são capazes de afetar a organização ',
		'A organização considera questões externas e internas que alterem sua capacidade de alcançar resultados pretendidos para o meio ambiente?', 
		1, 1, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('O modelo de negócio inclue estratégia, natureza, complexidade de tamanho e escala e atividade e operações sustentáveis',
		'A organização possui modelo de negócio com estratégia, natureza, complexidade e operações sustentáveis?', 
		1, 2, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Possui contexto (1) legal e regulatório, (2) social, cultural e ambiental',
		'A organização possui contexto legal e regulatório, além de voltado para questões sociais, culturais e ambientais?', 
		1, 3, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Considera a situação economica',
		'A organização considera situações econômicas?', 
		1, 4, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Considera estruturas internas, politicas, processos, procedimentos e recursos e tecnologia.',
		'A organização considera suas estruturas internas, políticas, processos, procedimentos, recursos e tecnologia?', 
		1, 5, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Possui cultura de compliance',
		'A organização possui uma cultura de compliance (“estar conforme" de maneira ética e legal)?', 
		1, 6, false, true, false );
		
INSERT INTO item (descricao,plano_acao, id_etapa, ordem) 
values ('Entendendo as expectativas das partes interessadas', 
		'A organização deve mapear as partes interessadas  e seus interesses em relação aos sistemas de Compliance ambiental. As partes interessadas são todas as pessoas e instituições que são afetadas direta ou indiretamente pela atuação da organização.',
		1, 2);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Determina as partes interessadas pertinentes ao SGA e SGC',
		'A organização determina as partes interessadas da organização para com as conformidades éticas e legais para o meio ambiente?', 
		2, 1, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Determina as necessidades e expectativas dessas partes interessadas',
		'A organização determina as necessidades e expectativas dessas partes interessadas?', 
		2, 2, true, true, false );
		
INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Determinando o escopo dos Sistemas de Gestão',
		'A Organização precisa determinar o escopo do Sistema de Compliance Ambiental. A partir do escopo do SCA será possível mapear as normas e requisitos éticos e legais e outros requisitos que impactam no compliance da organização.',
		1, 3);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização possue escopo para planejamento?',
		'A organização possue escopo para planejamento?', 
		3, 1, false, false, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Considera os limites e aplicabilidade do SGC',
		'A organização considera seus limites e aplicabilidades para as conformidades éticas e legais para o meio ambiente no seu escopo?', 
		3, 2, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('(4.2) Considera no escopo os requisitos legais e outros requisitos a partir das necessidades e expectativas das partes interessadas para o SGA e o SGC?',
		'A organização considera seus requisitos legais e outros requisitos a partir das expectativas das partes interessadas, relacionado às conformidades éticas e legais para o meio ambiente no seu escopo?', 
		3, 3, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('(4.1) Considera no escopo questões externas e internas pertinentes? exemplo as condições ambientais e de corrupção que são capazes de afetar a organização',
		'A organização considera questões externas e internas pertinentes às conformidades éticas e legais para o meio ambiente no seu escopo? Exemplo: condições ambientais ou corrupções capazes de afetar a organização', 
		3, 4, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Cosidera as unidades organizacionais, as funções e os limites físicos?',
		'A organização considera seus limites físicos nas suas conformidades éticas e legais para o meio ambiente no seu escopo?', 
		3, 5, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Considera no escopo as atividades produtos e serviços que oferece',
		'A organização considera suas atividades, produtos e serviços para as conformidades éticas e legais para o meio ambiente em seu escopo?', 
		3, 6, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Considera no escopo sua autoridade e capacidade de controle e influência ',
		'A organização considera a sua autoridade e capacidade de controle e influência para conformidades com o meio ambiente em seu escopo?', 
		3, 7, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Considera no escopo (1) obrigações de compliance e (2) avaliação de riscos',
		'A organização considera suas obrigações de conformidade e de avaliação de riscos para com o meio ambiente em seu escopo?', 
		3, 8, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Mantém informação documentada do escopo e está disponível para as partes interessadas',
		'A organização mantém informação documentada de seu escopo disponível às partes interessadas?', 
		3, 9, true, true, false );
		

INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Sistema de Gestão de Compliance Ambiental', 
		'A organização deve manter um sistema mínimo de Gestão, com processos que sigam normas e requisitos', 
		1, 4);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('deve estabelecer, implementar, manter e melhorar continuamente um sistema de gestão incluindo os processos necessários e suas interações, de acordo com os requisitos desta Norma.',
		'A organização possui algum Sistema de Gestão, com processos que seguem normas e requisitos?', 
		4, 1, true, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('O SGC deve reletir os valores , objetivos, estratégia e riscos de compliance da organização de acordo com o contexto da organização',
		'No Sistema de Gestão a organização reflete os valores, objetivos, estratégias e riscos de conformidade ética e legal para o meio ambiente de acordo com o seu contexto?', 
		4, 2, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Alcanças os resultados pretendidos incluindo o aumento do desempenho ambiental ',
		'A organização alcança seus resultados pretendidos, incluindo seu desempenho ambiental?', 
		4, 3, true, true, false );

INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Obrigações de compliance', 
		'A organização precisa monitorar e identificar novas obrigações de conformidade ética e legal para o meio ambiente e as mudanças necessárias para uma conformidade contínua.',
		1, 5);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Identifica novas obrigações de compliance e as mudanças necessárias para conformidade contínua',
		'A organização identifica novas obrigações de conformidade ética e legal para o meio ambiente e as mudanças necessárias para uma conformidade contínua?', 
		5, 1, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Avalia o impacto das mudanças identificadas e implementa, quando necessário, alterações nas obrigações de compliance',
		'A organização avalia o impacto das suas mudanças e implementa alterações das obrigações de conformidade a partir das mudanças?', 
		5, 2, false, true, false );

INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Avaliação de riscos de compliance', 
		'A organização deve realizar uma avaliação constante dos riscos éticos e legais de sua atuação.',
		1, 6);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Identifica , analisa e avalia os riscos de compliance com base na avaliação de riscos de compliance',
		'A organização possui avaliação de seus riscos de conformidade ética e legal para o meio ambiente?', 
		6, 1, false, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Identifica o riscos de compliance pela relação das obrigações de compliance das atividades/produtos/serviços e os aspectos relevantes da operação',
		'A organização avalia seus riscos de conformidade ética e legal para o meio ambiente a partir das suas atividades, produtos, serviços ou outro aspecto relevante da operação?', 
		6, 2, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Avalia os riscos de compliance relatados pelos colaboradores do processo',
		'A organização avalia seus riscos de conformidade ética e legal para o meio ambiente relatados pelos colaboradores do processo?', 
		6, 3, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Os riscos são avaliados periodicamente e o material sempre é atualizado para as diferente circuntânicas e contexto da organização',
		'A organização avalia seus riscos de conformidade ética e legal para o meio ambiente periodicamente e com material sempre atualizado para diferentes circunstâncias e contextos da organização?', 
		6, 4, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Retém inflormação documentada da avaliação de riscos de compliance e das ação para correção.',
		'A organização mantém informação documentada da avaliação de seus riscos de conformidade ética e legal para o meio ambiente e das ações para correção?', 
		6, 5, false, true, false );