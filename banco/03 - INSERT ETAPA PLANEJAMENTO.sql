INSERT INTO etapa(descricao, ordem, img) values ('Planejamento', 3, 'plan.svg'); 

INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Ações para abordar Riscos e Oportunidades', 
		'A organização deve manter procesos de planejamento e gestão de ações para riscos e oportunidades. Métodos de análise de risco como nálise SWOT, PESTLE, Brainstorm, pesquisas, dados históricos e experiência dos profissionais no negócio podem ser usados para auxiliar esse processo.',
		3, 1);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização utiliza-se de ações para prevenir riscos e oportunidades no seu planejamento?',
		'A organização utiliza-se de ações para prevenir riscos e oportunidades no seu planejamento?', 
		15, 1, true, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização estabelece, implementa e mantém processos sobre as questões externas e internas a empresa (ex.: partes interessadas, aspectos ambientais, e potenciais situações de emergência,  incluindo as de impacto ambiental)?',
		'A organização utiliza processos para acompanhamento de questões externas e internas à empresa?', 
		15, 2, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização estabelece, implementa e mantém processos sobre os requisitos legais e outros requisitos?',
		'A organização utiliza processos para o acompanhamento de requisitos legais ou outros requisitos?', 
		15, 3, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização utiliza metodologia de análise de processos para o escopo do Sistema de Gestão? (ex.: Análise SWOT, PESTLE, Brainstorm, pesquisas, dados históricos, experiência dos profissionais no negócio, outro método de análise).',
		'A organização utiliza-se de análises para riscos e oportunidades?', 
		15, 4, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização estabelece, implementa e mantém processos para determinar riscos e oportunidade relacionados aos aspectos ambientais e aos requisitos legais e outros requisitos?',
		'A organização realiza análise de riscos e oportunidades para os aspectos ambientais e para os requisitos legais e outros requisitos?', 
		15, 5, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização estabelece, implementa e mantém processos que assegurem o alcance dos resultados pretendidos pelo Sistemas de Gestão?',
		'A organização utiliza processos que garantam o sucesso dos resultados pretendidos em relação ao meio ambiente?', 
		15, 6, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização estabelece, implementa e mantém processos que previnem ou reduzem efeitos indesejados, incluindo condições ambientais externas?',
		'A organização utiliza processos que previnem ou reduzem efeitos indesejados, incluindo condições ambientais externas (como fortes chuvas ou seca extrema)?', 
		15, 7, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização estabelece, implementa e mantém processos para alcançar melhoria contínua?',
		'A organização utiliza-se de processos para alcançar a melhoria contínua?', 
		15, 8, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização considera os objetivos do compliance?',
		'A organização considera os objetivos da conformidade ética e legal para o meio ambiente nas atividades da empresa?', 
		15, 9, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização considera as obrigações de compliance identificadas no contexto?',
		'A organização considera, nas atividades da empresa, as obrigações de conformidade ética e legal para o meio ambiente identificadas a partir de seu contexto?', 
		15, 10, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Os resultados da conformidade da avaliação de riscos (4.6)',
		'A organização considera a conformidade ética e legal para o meio ambiente a partir da avaliação de riscos realizada?', 
		15, 11, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Dentro do escopo do sistema de gestão ambiental, determinar potenciais situações de emergência, incluindo aquelas que podem ter um impacto ambiental.',
		'A organização considera potenciais emergências, incluindo de impacto ambiental?', 
		15, 12, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Manter informações documentadas dos riscos e oportunidades a serem abordados',
		'A organização mantém informação documentada dos riscos e oportunidades a serem abordados?', 
		15, 13, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Manter informação documentada de processos de 6.1.1 e 6.1.4 a fim de ter confiança de que serão realizados conforme planejado;',
		'A fim de ter confiança de que serão realizados conforme planejado, a organização mantém informação documentada?', 
		15, 14, true, false, false );
		
		
INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Riscos e Oportunidades - Aspectos Ambientais', 
		'A organização deve mater planos de ações para abordar riscos e oportunidades relacionadas aos Aspectos Ambientais no seu planejamento.',
		3, 2);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização utiliza-se de ações para riscos e oportunidades relacionadas aos Aspectos Ambientais no seu planejamento?',
		'A organização utiliza-se de ações para prevenir riscos e oportunidades relacionadas aos aspectos ambientais no seu planejamento?', 
		16, 1, true, false, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ao determinar os aspectos ambientais, no escopo, considerar as mudanças planjeadas, novas, de atividades, produtos ou serviços ; e situações de emergência.',
		'A organização considera em seus aspectos ambientais os riscos operacionais?', 
		16, 2, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Determinar os aspectos ambientais significativos e os critérios: atividades normais (tudo do dia a dia); mudanças na organização podem modificar ou trazer novos aspectos (planjeamento, atividade, produtos, serviços novos ou modificados, ex. comissionamento, mudança de layout, reforma) e de condições anormais (não são necessariamente cotidianas, ex. manutenção de maquina, limpeza); situações de emergência razoavelmente previstas (ex incendio pode gerar fumaça, cinzas, vazamento com contaminação do solo)',
		'A organização considera os aspectos ambientais significativos e seus critérios?', 
		16, 3, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Comunicar seus aspectos ambientais significativos em diferentes níveis e funções da organização. Como apropriado',
		'A organização considera a comunicação de seus aspectos ambientais significativos em níveis e funções da organização, de forma apropriada?', 
		16, 4, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Manter informação documentada de seus aspectos e impactos ambientais associados',
		'A organização mantém informação documentada de seus aspectos e impactos ambientais?', 
		16, 5, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Manter informação documentada dos critérios utilizados para determinar seus aspectos ambientais significativos (por frequência, severidade (gravidade), requisito legal, relação com risco estratégico, demanda de parte interessada...)',
		'A organização mantém informação documentada dos critérios que determinam seus aspectos ambientais significativos?', 
		16, 6, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Manter informação documentada de seus aspectos ambientais significativos',
		'A organização mantém informação documentada de seus aspectos ambientais significativos?', 
		16, 7, true, false, false );
		
INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Riscos e Oportunidades - Requisitos Legais e outros requisitos', 
		'A organização deve manter um plano de ações para riscos e oportunidades relacionadas aos Requisitos Legais e Outros Requisitos ambientais no seu planejamento.',
		3, 3);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização utiliza-se de ações para riscos e oportunidades relacionadas aos Requisitos Legais e Outros Requisitos no seu planejamento?',
		'A organização utiliza-se de ações para riscos e oportunidades relacionadas aos Requisitos Legais e Outros Requisitos no seu planejamento?', 
		17, 1, true, false, true );		
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Para os requisitos leagias e outros determinar acesso, como se aplicam a organização e quando estabelecer, implementar, manter e melhorar continuamente o Sistema de gestão. Manter informação documentada dos requisitos e outros requisitos. (determinando como se aplicam à organização e em que condições utilizá-lo no SGA)',
		'A organização determina seus requisitos legais e outros requisitos?', 
		17, 2, true, false, false );		
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Para os requisitos leagias e outros determinar acesso, como se aplicam a organização e quando estabelecer, implementar, manter e melhorar continuamente o Sistema de gestão. Manter informação documentada dos requisitos e outros requisitos. (determinando como se aplicam à organização e em que condições utilizá-lo no SGA)',
		'A organização mantém informação documentada dos requisitos legais e outros requisitos estabelecidos?', 
		17, 3, true, false, false );


INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Riscos e Oportunidades - Planejamento de Ações', 
		'A organização deve manter um plano de ações para abordar riscos e oportunidades relacionadas ao planejamento de suas Ações.',
		3, 4);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização utiliza-se de ações para abordar riscos e oportunidades relacionadas Planejamento das Ações?',
		'A organização utiliza-se de ações para abordar riscos e oportunidades relacionadas ao planejamento das ações?', 
		18, 1, false, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Tomar ações para abordar os aspectos ambientais, requisitos legais e outros e riscos e oportunidades',
		'A organização aborda riscos e oportunidades durante o planejamento das ações? Como (1) os aspectos ambientais (2) os requisitos legais e outros (3) Os riscos e oportunidades?', 
		18, 2, true, true, false );		
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Por meio da implementação e integração de ações  nos processos de Sistema de Gestão e avaliando a eficácia dessas ações. ',
		'A organização realiza planejamento das ações? Como (1) a implementação e integração das ações aos processos (2) avalia a eficácia das ações?', 
		18, 3, true, true, false );		
		
		
INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Objetivos de conformidade ética e legal para o meio ambiente e Planejamento', 
		'A organização deve traçar Objetivos de Planejamento e de Conformidade ética e legal para o meio ambiente',
		3, 5);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização traça Objetivos de Planejamento e de Conformidade ética e legal para o meio ambiente?',
		'A organização traça Objetivos de Planejamento e de Conformidade ética e legal para o meio ambiente?', 
		19, 1, true, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('O estabelecimento dos objetivos ambientais e de compliance nos níveis e funções pertinentes?',
		'Quanto aos objetivos de conformidade ética e legal para o meio ambiente, a organização planeja-os para os diferentes níveis e funções da empresa?', 
		19, 2, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Mantém informação documentada dos objetivos considerando que deve ser: coerente com a política, mensuráveis (se viável), monitorados, comunicados e atualizados / além de considerar os requisitovs aplicáveis, ser acessivel como documento de informação',
		'Quanto aos objetivos de conformidade ética e legal para o meio ambiente, a organização mantém informação documentada? Considerando (1) coerência com sua política (2) se é mensurável (3) se é monitorado (4) se é comunicado e atualizado (5) se seus requisitos são aplicáveis e acessíveis', 
		19, 3, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Como alcançar seus objetivos de compliance e ambientais, considerando:  O Que será feito; Quais recursos serão requeridos; Quem será resposnável; Quando isso será concluído; e Como os resultados serão avaliados, incluíndo os indicadores de monitoramento de progressos dos objetivos mensuráveis',
		'Quanto aos objetivos de conformidade ética e legal para o meio ambiente, a organização planeja como alcançá-los? Considerando: (1) O que será feito (2) Quais recursos serão requeridos (3) Quem será o responsável (4) Quando será concluído e (5) Como os resultados serão avaliados (indicadores de monitoramento do progressos dos objetivos)', 
		19, 4, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('As mudanças devem ser realizadas de forma planejada e a organização deve considerar: o propósito da mudança e suas potenciais consequências, o design e eficácia operacional do SGC, a disponibilidade de recursos adequados e a alocação ou realocação das responsabilidades e autoridades.',
		'As mudanças na organização ocorrem de forma planejada? Considerando: (1) o motivo da mudança e suas potenciais consequências (2) o design e a eficácia operacional do sistema de gestão (3) a disponibilidade de recursos adequados e (4) a alocação ou realocação das responsabilidades e autoridades', 
		19, 5, true, true, false );
		
		