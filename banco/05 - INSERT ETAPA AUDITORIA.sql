INSERT INTO etapa(descricao, ordem, img) values ('Verificação', 5, 'check.svg');

INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Monitoramento, medição, análise e avaliação',
		'A organização deve ter um processo de auditoria capaz de medir, analisar e avaliar seu desempenho e grantir a conformidade ética e legal para o meio ambiente.',
		5, 1);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Monitorar, medir, analisar e avaliar o desempenho ambiental e garante o SGC',
		'A organização monitora, mede, analisa e avalia seu desempenho para garantir a conformidade ética e legal para o meio ambiente?', 
		30, 1, true, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Determinar o que precisa ser monitorado/medido; os métodos de monitoramento,medição, análise e avaliação para resultados válidos; os critérios para avaliar o desempenho e indicadores ambientais; quando monitorar e medir, quando os seus resultados devem ser analisados e avaliados.',
		'Nesse item a organização determina "o quê?", "como?", "quando?" ocorre o monitoramento e medição, análise e avaliação? Por exemplo (1) o que precisa ser monitorado e medido (2) os métodos de monitoramento, medição, análise e avaliação para resultados válidos (3) os critérios para avaliar o desempenho e os indicadores ambientais (4) quando deve monitorar e medir e (5) quando os seus resultados devem ser analisados e avaliados', 
		30, 2, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Avaliar seu desempenho ambiental e de compliance e a eficácia do SGA e do SGC',
		'A organização avalia seu desempenho e sua eficácia de conformidade ética e legal para o meio ambiente?', 
		30, 3, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Reter informação documentada apropriada como evidência do resultado (SGC) e de monitoramento, medição, análise e resultados da avaliação (SGA).',
		'A organização mantém informação documentada de seus resultados, monitoramento, medição, análise e avaliação de conformidade ética e legal para o meio ambiente?', 
		30, 4, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Assegurar que os equipamentos de monitoramento e medição estão calibrados e verificados',
		'A organização assegura o calibre e verificação de equipamentos de medição e monitoramento?', 
		30, 5, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Comunicar interna e externamente informações pertinentes sobre seu desempenho ambiental como requerido por seus requisitos legais e outros requisitos',
		'A organização comunica, interna e externamente, as informações sobre seu desempenho de conformidade ética e legal ambiental de forma apropriada?', 
		30, 6, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Estabelecer, implementar e manter processos para avaliar o atendimento a seus requisitos',
		'A organização mantém processos que avaliam o atendimento aos requisitos legais e outros requisitos?', 
		30, 7, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Determinar a frequencia com que o atendimento a requisitos serão avaliados',
		'A organização determina a frequência de avaliação para o atendimento aos requisitos?', 
		30, 8, true, false, false );
		
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Avaliar o atendimento aos requisitos e toma ações se necessário',
		'A organização ao avaliar os requisitos toma as ações necessárias?', 
		30, 9, true, false, false );		
		
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Manter conhecimento e entendimento da situação para atender aos requisitos',
		'A organização tem entendimento da situação para atender os requisitos?', 
		30, 10, true, false, false );		
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Manter informação documentada como evidência do resultado da avaliação do atendimentos aos requisitos.',
		'A organização mantém informação documentada da avaliação do atendimento aos requisitos?', 
		30, 11, true, false, false );		
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Estabelecer, implementar, avaliar e manter processos para buscar e receber feedbacks para o seu desempenho de compliance de diferentes fontes de fontes. A informação deve ser analisa e avaliada criticamente para identificar a raiz das causas da não conformidade, garantir que ações adequadas sejam tomadas, e refletir as infirmações na avaliação de riscos períodica exigida em 4.6',
		'A organização mantém processos para buscar e receber feedbacks para seu desempenho de conformidade com diferentes fontes?', 
		30, 12, false, true, false );		
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização deve desenvolver, implementar e manter um conjunto de indicadores apropriados que assistirão a organização na evolução da conquista dos objetivos de compliance e avaliando o desempenho do compliance',
		'A organização desenvolve, implementa e mantém um conjunto de indicadores apropriados para que a organização evolua na conquista dos objetivos e do seu desempenho de compliance ambiental?', 
		30, 13, false, true, false );		
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Estabelecer, implementar e manter processos para relatórios de complaince a fim de garantir: a) definição de criétrios apropriados para relatórios b)estabelicimento de cronograma para relatórios regulares c)Implantação de sistemas de relatórios exceção para facilitar relatórios ad hoc d) implantação de sistemas e processos para garantir a precisão e integridade da informação e)fornecimento de informações completas e precisas para funções e áreas corretas da organização para previnir, corrigir e remediar ações  para serem tomadas em tempo hábil;   Qualquer relatório  função compliance ao corpo diretivo e à alta diração deve ser adequadamente protegidas de alterações.',
		'A organização mantém processos para que os relatórios de compliance ambiental sejam garantidos?', 
		30, 14, false, true, false );		
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Registros precisos e atualizados de atividades de compliance na organização deve ser retida para ajudar no monitoramento e revisão de processos e demonstrativo de conformidade com SGC.',
		'A organização mantém registros precisos e atualizados das atividades de compliance ambiental na organização para monitoramento e revisão de processos da conformidade ética e legal ambiental?', 
		30, 15, false, true, false );		
		
		
INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Auditoria interna', 
		'A organização deve manter um planejamento cíclico para execução das auditorias, deixando parametrizados quais serão os pontos avaliados que tem impactos no Sistema de Gestão de Compliance Ambiental.',
		5, 2);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A organização realiza auditorias internas?',
		'A organização realiza auditorias internas?', 
		31, 1, true, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Conduzir auditorias internas em intervalos planejados',
		'A organização realiza as auditorias em intervalos planejados?', 
		31, 2, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Estar conforme com requisitos da organização para o SGA e SGC e para os requisitos da ISO',
		'A organização está em compliance com os requisitos para conformidade ética e legal com o meio ambiente?', 
		31, 3, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Estabelecer, implementar e manter programa de auditoria interna com frequência, métodos, responsabilidades e requisitos para planejar e relatar.',
		'A conformidade ética e legal com o meio ambiente está implementada e mantida?', 
		31, 4, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Considerar no programa de auditoria a importâncial dos processos concernentes (de complaince e ambiental por frequêcia) e as mudanças que afetam a organização e os resultados de auditorias anteriores.',
		'A organização mantém um programa de auditoria com frequência, métodos, responsabilidades e requisitos para planejar e relatar?', 
		31, 5, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Definir critérios, escopo e objetivos para cada auditoria - trilha livre/ determinada por checklist.',
		'A organização considera a importância dos processos por frequência, as mudanças que as afetam e os resultados de auditorias anteriores?', 
		31, 6, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Selecionar auditores e levar a auditoria de forma objetiva e imparcial (competência dos auditores: educação, treinamento, experiência, imparcialidade)',
		'A organização define critérios, escopo e objetivos para cada auditoria?', 
		31, 7, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ter resultados relatados para gerência responsável. Documentados por meio de relatório da auditoria e de relatórios das constatações da auditoria (resultados das avaliações das evidências com os critérios de norma, procedimento ou requisito legal), se são conformes ou não conformes.',
		'A organização seleciona auditores que levem a auditoria de forma imparcial, com competência (educação, treinamento, experiência e imparcialidade)?', 
		31, 8, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Reter informações documentadas como evidência do programa de auditoria e dos resultados',
		'Existem resultados relatados às gerências responsáveis, com documentação em relatório das constatações, se conformes ou não conformes?', 
		31, 9, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Analisar criticamente  o Sistema de Gestão em intervalos planejados para contínua adequação, suficiência e eficácia, considerando:',
		'Mantém informação documentada da auditoria e dos resultados? ', 
		31, 10, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Acompanhamento das situações provenientes de análises anteriores',
		'A direção realiza análise crítica da conformidade ética e legal para o meio ambiente em intervalos planejados?', 
		31, 11, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Mudança no contexto no que se refere ao Sistema de Gestão em (1) questões internas e externas, (2) necessidades das partes interessadas, (3) aspectos ambientais significativos, (4) riscos e oportunidades.  - 3 e 4 apenas em SGA',
		'A organização considera o acompanhamento das situações de análises anteriores?', 
		31, 12, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Extensão na qual os objetivos ambientais foram alcançados',
		'A organização considera as mudanças do contexto da organização, no que se refere as: a) questões internas e externas b) necessidades das partes interessadas c) aspectos ambientais significativos d) riscos e oportunidades?', 
		31, 13, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Informações sobre o desempenho ambiental e de compliance como (1) não conformidades e ações corretivas, (2) resultados de monitoramento e medição, (3) atendimento aos requisitos, (4) resultado de auditorias.',
		'A organização considera a extensão na qual os objetivos ambientais são alcançados?', 
		31, 14, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Oportunidades para melhoria contínua.',
		'A organização considera as informações sobre o desempenho do compliance ambiental quanto a a) não conformidades e ações corretivas b) resultados de monitoramento e medição c) atendimento aos requisitos d) resultados de auditorias?', 
		31, 15, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Os recursos são adequados (SGC) e suficientes (SGA) para o sistema ou para as mudanças necessárias',
		'A organização considera as oportunidades para melhoria contínua?', 
		31, 16, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('As saídas da análise crítica pela alta direção deve incluir: a) conclusões sobre a  adequação contínua (SGC + SGA), suficiência e eficácia do sistema de gestão ambiental; b) decisões relacionadas às oportunidades para melhoria contínua; c) ações, se necessárias, quando não forem alcançados os objetivos ambientais; d) comunicação com as partes interessadas, como reclamações, demandas do órgão ambiental, sugestões, avaliação do serviço.',
		'A organização considera a suficiência e adequação dos recursos para manter a conformidade ética e legal para o meio ambiente, ou para as mudanças necessárias?', 
		31, 17, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('As saídas da análise crítica pela alta direção deve incluir: a) oportunidade de melhorar e integrar o SGA com os processos de negócio, se necessário; b) qualquer implicação para o direcionamento estratégico da organização',
		'A organização considera suficiência e eficácia do sistema de gestão ambiental, oportunidades para melhoria contínua, ações para os objetivos ambientais, reclamações e demandas das partes interessadas?', 
		31, 18, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('As saídas da análise crítica pela alta direção deve incluir: a) Independencia da função de compliance; b) adequação do gerenciamento de riscos para compliance; c) eficácia dos controles existentes e indicadores de compliance; d) investigação; e) Eficácia do sistema de relatórios.',
		'A organização considera oportunidades de melhoria e direcionamento estratégico da organização?', 
		31, 19, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Os resultados devem incluir as decisões tomadas nas oportunidades de melhoria contínua e qualquer necessidade de mudança para o SGC.',
		'A organização considera a independência gestor ambiental, adequação do gerenciamento de riscos, a eficácia dos indicadores, investigação e eficácia do sistema de relatórios?', 
		31, 20, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Retém informações documentadas como evidência do resultado das análises críticas pela direção, considerando todo o 9.3',
		'Os resultados da análise de gestão incluem as decisões tomadas sobre as oportunidades, melhoria e as necessidades de mudanças para o sistema?', 
		31, 21, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Retém informações documentadas como evidência do resultado das análises críticas pela direção, considerando todo o 9.3',
		'A organização mantém informações documentadas sobre os resultados das análises críticas pela direção?', 
		31, 22, true, true, false );
		
		
		