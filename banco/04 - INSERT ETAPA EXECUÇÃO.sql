INSERT INTO etapa(descricao, ordem, img) values ('Execução', 4, 'done.svg'); 

INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Recursos', 
		'A organização deve determinar e prover recursos para estabelecer, implementar, realizar manutenção e melhoria contínua dos Sistemas de Gestão.',
		4, 1);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização deve determinar e prover recursos para estabelecer, implementar, realizar manutenção e melhoria contínua dos Sistemas de Gestão',
		'A organização reserva recursos para ações de conformidades éticas e legais para o meio ambiente? Como: (1) tem provisão de treinamento (2) tem provisão de mentoria (3) mudança de atribuição de pessoas e (4) emprega e contrata pessoas competentes ao cargo', 
		20, 1, true, true, false );


INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Compentência', 
		'A organização deve determinar de forma clara as competências de seus colaboradores em relação ao Sistema de Compliance Ambiental. Garantindo o treinamento e atualização de seus colaboradores em relação das requisitos legais e éticos que devem ser observados pela organização.', 
		4, 2);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização determina as competências de seus colaboradores?',
		'A organização determina as competências de seus colaboradores?', 
		21, 1, true, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Tem determinado a competência necessária às pessoas que realizam trabalho para os Sistemas de Gestão; assegurar que sejam competentes com educação, treinamento e experiência; Tomar ações para adquirir competências e avalia a eficácia das ações tomadas.  ',
		'A organização determina as competências necessárias aos seus colaboradores que atuam nas conformidades éticas e legais para o meio ambiente? Como: (1) Os colaboradores tem nível de educação adequados ao cargo (2) Os colaboradores tem treinamento adequados ao cargo  e (3) Os colaboradores tem experiência adequados ao cargo', 
		21, 2, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Determina a necessidade de treinamento asssociada ao SGA e aos aspectos ambientais',
		'A organização determina a necessidade de treinamento associado ao meio ambiente e aos seus aspectos ambientais?', 
		21, 3, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Mantém informação documentada com evidência de competência',
		'A organização mantém informação documentada com evidência das competências?', 
		21, 4, true, true, false );		
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização deve desenvolver, estabelecer, implementar, e manter processos de modo que: a) as condições de emprego cumpram as obrigações, políticas, processos e procedimentos de compliance b) em um preríodo razoável do início do trabalho o pessoal receba uma cópia ou tenha acesso a política de compliance e treinamento sobre a política c) ações disciplinares apropriadas deve ser aplicadas a quem violar as obrigações, políticas, processos e procedimentos de compliance.   E ainda deve fornecer contratação, transferência, promoção e incentivos de forma apropriada como medidas que previnam a não conformidade.',
		'A organização considera as competências em seus processos de emprego? Considerando: (1) as condições de emprego cumpram as obrigações, políticas, processos e procedimentos de conformidade ética e legal (2) em determinado momento, os colaboradores recebem uma cópia ou tenha acesso a política de conformidade ética e legal para o meio ambiente, além de ter treinamento sobre a política (3) ações disciplinares apropriadas são aplicadas a quem violar as obrigações, políticas, processos e procedimentos de conformidade e (4) etapas de contratação, transferência, promoção e incentivos são realizadas de forma apropriada, como medidas que previnam a não conformidade ética e legal', 
		21, 5, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Deve fornecer ao pessoal, desde o anúncio do emprego, treinamento apropriado com bases regulares e em intervalos planejados pela organização. O treinamento deve: a) ser apropriado aos papéis e aos riscos de compliance que as pessoas são expostas b) avalia quanto a eficácia c) revisada regularmente; Deve considerar os riscos identificados e implementar ações de conscientização para os terceirizados que possam levar a riscos de compliance na organização.  Mantém informação documentada com evidência',
		'A organização fornece, desde o anúncio do emprego, treinamento apropriado em intervalos planejados? Com: (1) conteúdo apropriado aos papéis e riscos de conformidade nos quais as pessoas são expostas (2) avaliação da eficácia do treinamento (3) revisão regular (4) Considera os riscos identificados ao implementar ações de conscientização para os terceirizados minimizando riscos de conformidade na organização e (5) Mantém informação documentada com evidência', 
		21, 6, false, true, false );
		
		
INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Conscientização', 
		'A Organização deve desenvolver e manter campanhas e políticas de concientização dos colaboradores sobre o Sistema de Compliance Ambiental e sobre os papeis que os colaboradores exercem sobre o SCA.',
		4, 3);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Existe conscientização para os colaboradores da organização?',
		'Existe conscientização para os colaboradores da organização?', 
		22, 1, true, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Da Política ambiental e de compliance',
		'A conscientização engloba a política de conformidade ética e legal para o meio ambiente?', 
		22, 2, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Dos aspectos ambientais significativos, reais ou potenciais',
		'A conscientização engloba os aspectos ambientais significativos, reais ou potenciais?', 
		22, 3, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Da sua contribuição para a eficácia do SGA e SGC, incluindo os benefícios de desempenho ambiental melhorado',
		'A conscientização sensibiliza sobre a contribuição do colaborador para a eficácia da conformidade ética e legal para o meio ambiente, incluindo os benefícios da melhoria do desempenho ambiental?', 
		22, 4, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Das implicações (consequências) da não-conformidade com os requisitos',
		'A conscientização engloba as implicações (consequências) da não-conformidade com os requisitos?', 
		22, 5, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Dos meios e procedimentos para levantar questões de compliance (8.3)',
		'A conscientização considera os meios e os procedimentos para levantar questões de conformidade ética e legal para o meio ambiente?', 
		22, 6, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Das relações entre as políticas de compliance e as obrigações de compliance apropriadas para seus papéis',
		'A conscientização engloba a relação entre as políticas de conformidade e as obrigações de forma apropriada aos seus papéis?', 
		22, 7, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Da importância do apoio da cultura de compliance',
		'A conscientização engloba a importância do apoio para uma cultura de conformidade ambiental?', 
		22, 8, false, true, false );
		
INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Comunicação', 
		'A organização deve manter os processos de comunicação interna e externa claros e coerentes com os requisitos legais, éticos e outros requisitos ambientais.',
		4, 3);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Existem procesos de comunicação na organização?',
		'Existem processos de comunicação na organização?', 
		23, 1, true, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Nos processos de comunicação interna e externa a organização deve estabelecer, implementar e manter processos sobre "o quê", "como", "com quem" e "quando" se comunicar',
		'A organização durante a comunicação, interna ou externa à empresa, determina processos sobre "O quê", "Como", "Com quem" e "Quando" se comunicar?', 
		23, 2, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Além de considerar os requisitos legais, outros requisitos; e que a informação comunicada seja coerente com a informação do SGA.',
		'A organização, durante sua comunicação, considera os requisitos legais e outros requisitos coerentes com as informações ambientais?', 
		23, 3, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Considera a necessidade de comunicação para a diversidade dos aspectos e potenciais barreiras ; garante que que a informação é comunicada as partes interessadas estabelencendo o processo de comunicação; E quando estabelecido o processo de comunicação: a comunicação deve incluir a cultura, objetivos e obrigações de compliance, e garantir que a informação de compliance comunicada é consistente com informações geradas do Sistema de Gestão de Compliance e de confiança',
		'O processo de comunicação considera as partes interessadas, a cultura e as adequações éticas e legais para o meio ambiente? Como: (1) a diversidade dos aspectos e potenciais barreiras (2) garante que que a informação é comunicada às partes interessadas (3) O processo de comunicação inclui a cultura, os objetivos e as obrigações da conformidade com o meio ambiente e (4) garante uma informação de conformidade comunicada de forma consistente com as adequações éticas e legais para o meio ambiente e confiança', 
		23, 4, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Retém informação documentada para evidências das comunicações de forma apropriada?',
		'A organização mantém informação documentada para evidência das comunicações?', 
		23, 5, true, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização comunica internamente as informações dos sistemas de Gestão aos diferentes níveis e funções , considerando também as mudanças do sistema?',
		'A organização comunica internamente as informações de conformidade ética e legal ambiental, e suas mudanças, aos diferentes níveis e funções?', 
		23, 6, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização deve assegurar que a partir da comunicação as pessoas que trabalham compreendam o Sistema de Gestão e contribuam para a melhoria contínua',
		'A organização assegura, a partir da comunicação, que os colaboradores compreendam as conformidades éticas e legais ambientais e contribuam para a melhoria contínua?', 
		23, 7, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização deve comunicar externamente informações do Sistema de Gestão que são pertinentes ao requerido pelos requisitos',
		'A organização comunica externamente as informações de conformidade ética e legal ambiental pertinentes à empresa e às partes interessadas?', 
		23, 8, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização deve garantir que o processo de comunicação possibilite levantar questionamentos',
		'A organização garante que a comunicação permita levantar questionamentos?', 
		23, 9, false, true, false );

		
INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Informação Documentada', 
		'A organização deve manter informações documentadas sobre a eficácia das conformidades éticas e legais para o meio ambiente.',
		4, 4);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização deve manter informação documentada requerida pela norma e determinada pela organização para eficácia do Sistema de Gestão',
		'A organização mantém informação documentada quanto à eficácia das conformidades éticas e legais para o meio ambiente?', 
		24, 1, true, true, true );	
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('As informações documentadas da organização contém: identificação e descrição (título, data, autor, número de referência), formato (linguagem, sotwarem gráfico), meio (pael/eletrônico) e análise critica para aprovação quanto adequação e suficiência',
		'As informações documentadas estão padronizadas e com informações necessárias? Contendo (1) identificação e descrição (título, data, autor, número de referência) (2) formato (linguagem computacional, sotwarem gráfico, outro) (3) meio (papel ou eletrônico) e (4) análise critica para aprovação (quanto a adequação e suficiência)', 
		24, 2, true, true, false );	
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização controla a informação documentada assegurando que esteja disponível e adequada para uso, além de protegida (por confiadencialidade, uso impróprio ou perda)?',
		'A organização tem controle sobre as informações documentadas? Assegurando: (1) disponibilidade (2) adequação para uso (3) proteção para confidencialidade (4) proteção para uso impróprio e (5) proteção para perda', 
		24, 3, true, true, false );	
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('No controle a organização aborda: a distribuição, acesso, recuperação, uso; armazenamento e preservação (inclusive preservalção de legibilidade); controle de alterações (versões); retenção e disposição?',
		'A organização possui controle de seus documentos? Garantindo (1) a distribuição, acesso, recuperação e uso (2) o armazenamento e preservação (inclusive preservação de legibilidade) (3) o controle de alterações em suas versões e (4) a retenção e disposição da documentação', 
		24, 4, true, true, false );	
		
INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Planejamento e controle operacional', 
		'A Organização deve manter um planejamento con critérios operacionais que devem ser observados para controle de mudanças afim de garantir a conformidade ambiental.',
		4, 5);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Estabelecer, implementar, controlar e manter os processos, (1)estabelecendo critérios operacionais ao processo e (2) implementando controle de processos pelos criterios operacionais.',
		'A organização tem processos com critérios operacionais?', 
		25, 1, true, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Controlar as mudanças planejadas e analisa criticamente as consequencias não intencionais , com ações de mitigação de efeitos adversos  - EX SGA: Durante a aquisição considera-se especificações ambientais do produto (maior eficiencia energética, redução de agua, resíduos) ou mesmo licença ambiental dos fornecedores/ Garantir que processo, produtos e serviços fornecidos externamente são apropriados para o SGC',
		'A organização controla as mudanças planejadas e analisa criticamente suas consequências (não intencionais), com ações de mitigação de efeitos adversos? Por exemplo, na aquisição de produtos/serviços considera: (1) a eficiência energética (2)a  redução de água (3) produção de resíduos (4) licença ambiental de fornecedores e (5) outros', 
		25, 2, true, true, false );	
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Assegurar que os processos terceirizados sejam controlados ou influenciados. O tipo e a extensão do controle ou da influência a serem aplicados ao(s) processo(s) deve(m) ser definidos dentro do sistema de gestão ambiental.',
		'A organização assegura o controle ou a influência dos processos terceirizados (definindo o tipo e extensão do controle ou da influência)?', 
		25, 3, true, false, false );	
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Estabelecer controles, como apropriado, para assegurar que o(s) requisito(s) ambiental(is) seja(m) tratado(s) no processo de projeto e desenvolvimento do produto ou do serviço, considerando cada estágio do seu ciclo de vida / O produto durante seu desenvolvimento tem objetivo de desempenho ambiental na entrada do projeto, com validação e verficação? Indicador/ taxa de emisões',
		'A organização estabelece os controles (com validação e verificação de indicadores) para o tratamento nos processos do projeto e do desenvolvimento do produto/serviço nos estágios do seu ciclo de vida?', 
		25, 4, true, false, false );	
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Determinar seu(s) requisito(s) ambiental(is) para a aquisição de produtos e serviços, como apropriado',
		'A organização determina os requisitos ambientais éticos e legais para a aquisição de produtos e serviços?', 
		25, 5, false, false, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Comunicar seu(s) requisito(s) ambiental(is) pertinente(s) para provedores externos, incluindo contratados; /  Durante a produção/prestação do serviço (por provedores externos) considera os procedimentos operacionais, coletor de resíduos, manutenção de maquinas/equipamentos, instalação de filtros em pontos de pouição atmosféricas.',
		'A organização comunica seus requisitos ambientais éticos e legais para provedores externos ou contratados para atividades? Por exemplo, para: (1) coletores de resíduos (2) manutanção de equipamentos (3) instalações de máquinas e equipamentos e (4) outros', 
		25, 6, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Considerar a necessidade de prover informações sobre potenciais impactos ambientais significativos associados com o transporte ou entrega, uso, tratamento pós-uso e disposição final dos seus produtos e serviços. / Na entrega considera manutenção dos caminhões, reutilização de embalagens, otimização de acondicionamento de mercadorias. Durante uso explicar ao cliente como usar de maneira otimizada, com maior eficiência , e de forma mais responsável (manual de instrunções). No tratamento pós-uso e disposição final tem disponibilidade de pontos de coleta/ logistica reversa.)',
		'A organização disponibiliza informações sobre potenciais impactos ambientais significativos associados ao transporte, entrega, uso, tratamento pós-uso e disposição final de seus produtos/serviços? Por exemplo: (1) a manutenção dos caminhões (2) reuso de embalagens (3) otimização do uso do produto para eficiência (4) uso de forma responsável (5) disponibiliza manual de instrunções para o cliente (6) logística reversa e (7) outros', 
		25, 7, true, false, false );	
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Assegurar que processos terceirizados são controlados ou influenciados, com a definição do tipo e extensão do controle ou da influência no SGA.',
		'A organização considera o controle ou a influência de seus processos terceirizados com definição do tipo e extensão do controle/influência?', 
		25, 8, true, true, false );	
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Manter informação documentada, em extensão necessária, para confiança de que os processos são realizados como planejado.',
		'A organização mantém informação documentada, de maneira a ter confiança de que seus processos serão realizados como planejados?', 
		25, 9, true, true, false );	
	
	
INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Preparação e resposta a emergências', 
		'A organização deve possui  e manter processos que respondem a potenciais situação de emergências ligadas aos requisitos do compliance ambiental.',
		4, 6);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Estabelecer, implementar, controlar e manter os processos para responder a potenciais situações de emergência.',
		'A organização possui processos que respondem a potenciais emergências?', 
		26, 1, true, false, true );	
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ter planejamento para ações preventivas ou de mitigação de impactos ambientais adversos de situações de emergências (não colocar materiais quimicamento incompatíveis próximos, aramazenar óleo apenas em tambor certificados)',
		'A organização possui planejamento para ações preventivas e de mitigação de impactos ambientais adversos de emergências? Exemplo: (1) locais para disposição correta para materiais químicos incompatíveis (2) armazenamento de óleo em tambor certificado e (3) outros', 
		26, 2, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Responder situações de emergência reais ',
		'A organização responde a emergências reais?', 
		26, 3, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ter Plano de Emergências (documento para situação de emergências - incêndio, explosão, derramamento químico) - métodos (como se lidar com, quem pode auxiliar, quais as formas, onde estão os equipamentos de emergências), meios de comunicação (como outras pessoas ficam sabendo), minimizar o impacto ambiental, equipe envolvida e plano de auxilio multuo, simulados, avalia se funcionou, resultados adequados e mudanças.',
		'A organização possui plano de emergência? Com: (1) documento para situações de emergências, como incêndios, explosão, derramamento químico (2) métodos de como lidar com a emergência, quem contactar, quais as formas de ação, como identificar emergências (3) meios de comunicação para informar outras pessoas (4) minimizar impactos utilizando um plano de auxílio mútuo(5) simulados (6) avaliação de funcionalidade e resultados adequados e (7) plano a partir de mudanças', 
		26, 4, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ter ações para previnir os mitigar as consequências da situação de emergência diante da magnitude e potencial impacto ambiental',
		'A organização tem ações para prevenir e mitigar consequências de emergências relacionadas a magnitude e potencial impacto ambiental?', 
		26, 5, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Testar periodicamente as ações de repsosta planejadas',
		'A organização realiza testes periódicos de ações de resposta planejadas?', 
		26, 6, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Analisar criticamente e revisa os processos e ações de resposta planejada após ocorrências de situações de emergências ou testes. ',
		'A organização faz análise crítica e revisa os processos e as ações de respostas desejadas após a ocorrência de emergências ou testes?', 
		26, 7, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Prover informações pertinentes e treinamento para a preparação e resposta a emergências',
		'A organização provê informações e treinamento pertinentes para preparação e resposta a emergências?', 
		26, 8, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Manter informação documentada, em extensão necessária, para confiança de que os processos são realizados como planejado.',
		'A organização mantém informação documentada, a fim de ter confiança de que seus processos serão realizados como planejados? ', 
		26, 9, true, false, false );
	
	
INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Estabelecendo controles e procedimentos', 
		'A organização deve implementar controles para gerir as obrigações e riscos associados ao compliance. Esses controles devem ser mantidos periodicamente e testados para que garantam sua eficácia contínua.', 
		4, 7);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização deve implementar controles para gerir as obrigações e riscos associados a compliance. Esses controles devem ser mantidos periodicamente e testados para que garantam sua eficácia contínua.',
		'A organização implementa controles que gerenciam obrigações e riscos de conformidade, mantidos periodicamente e testados para eficácia contínua?', 
		27, 1, false, true, false );	

INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Levantando preocupações', 
		'A organização deve estabelecer,implementar e manter processos que encoragem e comuniquem relatos de tentativa ou violação real das obrigações e politicas de compliance. OS processos devem: ser visiveis e acessiveis em toda a organização; tratar os relatos confidencialmente; aceitar relatos anônimos; proteger os relatos de retaliação; Permitir que as pessoas recebam conselhos. A organização Deve garantir que todo o pessoal seja consciente do procedimento de denúcia, seus direitos e proteções.',
		4, 8);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização deve estabelecer,implementar e manter processos que encoragem e comuniquem relatos de tentativa ou violação real das obrigações e politicas de compliance. OS processos devem: ser visiveis e acessiveis em toda a organização; tratar os relatos confidencialmente; aceitar relatos anônimos; proteger os relatos de retaliação; Permitir que as pessoas recebam conselhos. DEve garantir que todo o pessoal seja consciente do procedimento de denúcia, seus direitos e proteções.',
		'A organização mantém processos que encorajam e comunicam relatos de tentativas ou violações reais das políticas de conformidades éticas e legais para o meio ambiente? Sendo eles realizados: (1) de maneira vísivel (2) com relatos confidenciais, aceitando anônimos (3) com todo o pessoal consciente do procedimento de denúncia, seus direitos e proteção', 
		28, 1, false, true, false );	

INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Processo de investigação', 
		'A organização precisa manter um processo de investigação para relatos de suspeitas ou ocorrências reais de não conformidades éticas e legais ambientais, a fim de tomar decisões justas e imparciais.', 
		4, 9);


INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Estabelecer,implementar e manter processos para acessar, avaliar, investigar e fechar relatos de suspeitas ou ocorrência real de não conformidade. Esse processos devem garantir tomadas de decisões justas e imparciais.',
		'A organização mantém processo de investigação para relatos de suspeitas ou ocorrências reais de não conformidades éticas e legais ambientais, a fim de tomar decisões justas e imparciais?', 
		29, 1, false, true, true );	
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('O processo de investigação deve ser realizado independentemente e sem confito de interesses pela pessoa competente.',
		'A investigação é realizada de forma independente e sem conflitos de interesses pelo competente?', 
		29, 2, false, true, false );	
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização deve usar os resultados da investigação para melhoria do SGC de forma apropriada',
		'A organização utiliza-se do processo de investigação para melhoria das ações no sistema?', 
		29, 3, false, true, false );	
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização deve relatar regularmente os números  e resultados de investigações para o corpo executivo e da alta direção.',
		'A organização relata regularmente os números e resultados de investigações para a alta direção?', 
		29, 4, false, true, false );	
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Manter informação documentada na investigação',
		'A organização mantém informação documentada sobre a investigação? ', 
		29, 5, false, true, false );	

	