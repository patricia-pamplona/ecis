INSERT INTO etapa(descricao, ordem, img) values ('Liderança', 2, 'lideranca.svg'); 

INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Liderança e comprometimento', 
		'A alta direção deve demonstrar liderança e comprometimento com suas conformidades éticas e legais para o meio ambiente?',
		2, 1);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Demonstrar liderança e comprometimento com o Sistema de Gestão',
		'A alta direção demonstra liderança e comprometimento com suas conformidades éticas e legais para o meio ambiente?', 
		7, 1, true, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Prestar contas pela eficácia do SGA',
		'A alta direção presta contas pela eficácia das suas conformidades éticas e legais com o meio ambiente?', 
		7, 2, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Assegurar que as políticas e os objetivos, de compliance e ambinetal, são estabelecidos e compatíveis com o direcionamento estratégico e o contexto da organização',
		'A alta direção quanto às conformidades éticas e legais com o meio ambiente assegura políticas e objetivos estabelecidos e compatíveis com o direcionamento estratégico e o contexto da organização?', 
		7, 3, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Assegurar a integração dos requisitos do Sistema de Gestão nos processos de negócios da organização',
		'A alta direção assegura a integração dos requisitos para as conformidades éticas e legais com o meio ambiente nos processos de negócios da organização?', 
		7, 4, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Assegurar que os recursos necessários para Sistema de Gestão estejam disponíveis',
		'A alta direção assegura disponibilidade dos recursos necessários para a sua conformidade ética e legal com o meio ambiente?', 
		7, 5, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Comunicar a importância de um Sistema de Gestão eficaz e de estar conforme aos seus requistios',
		'A alta direção comunica a importância da eficácia e do cumprimento com os requisitos para a sua conformidade ética e legal com o meio ambiente?', 
		7, 6, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Assegurar que o Sistema de Gestão alcance os resultados pretendidos',
		'A alta direção assegura que as conformidades éticas e legais com o meio ambiente alcance os resultados pretendidos?', 
		7, 7, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Dirigir e apoiar as pessoas para contribuirem para a eficácia do Sistema de Gestão',
		'A alta direção dirige e apoia as pessoas a contribuírem para a eficácia da sua conformidade ética e legal com o meio ambiente?', 
		7, 8, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Promover a melhoria contínua',
		'A alta direção promove melhoria contínua?', 
		7, 9, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Estabelecer e sustentar os valores da organização',
		'A alta direção estabelece os valores da organização?', 
		7, 10, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Garantir que as políticas, processos e procedimentos são desenvolvidos e implementados para alcançar os objetivos de compliance',
		'A alta direção garante que as políticas, processos e procedimentos são desenvolvidos e implementados para alcançar os objetivos de compliance?', 
		7, 11, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Garantir a informação de maneira oportuna sobre conteúdos de compliance, incluindos as não conformidades, e garante que ações propriadas são tomadas',
		'A alta direção garante informações de maneira oportuna sobre as conformidades e não-conformidade éticas e legais com o meio ambiente e garante que ações apropriadas são tomadas?', 
		7, 12, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Garantir que o comprometimento com a conformidade é mantido e que a não conformidade e comportamentos não complacentes são tratados apropriadamente',
		'A alta direção se compromete com a manutenção da conformidade ética e legal ambiental e que as não conformidades e comportamentos não complacentes são tratados apropriadamente?', 
		7, 13, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Garantir que as responsabilidades de compliance são incluidas nas descrições dos cargos de forma apropriada',
		'A alta direção garante que as responsabilidades de conformidade ética e legal ambiental são incluídas nas descrições dos cargos de forma apropriada?', 
		7, 14, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Nomear uma função de compliance (veja 5.3.2 do SGC)',
		'A alta direção nomeia uma função de compliance ambiental?', 
		7, 15, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Garantir que os SGC levanta e aborda questões de acordo com o estabelecido em 8.3 do SGC. ',
		'A alta direção garante que inclui segurança e acessibilidade ao serem reportadas questões de não-conformidade?', 
		7, 16, false, true, false );

INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Cultura de compliance ambiental', 
		'A organização deve promover uma cultura organizacional de coformidade ética e legal com o meio ambiente.',
		2, 2);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Manter e promover uma cultura de compliance em todos os níveis da organização.',
		'A alta direção promove cultura de conformidade ética e legal para o meio ambiente em todos os níveis da organização?', 
		8, 1, false, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Demostrar comprometimento ativo, visível, consistente e sustentável ao padrão de comportamento e conduta requeridos a todos.',
		'A alta direção demonstra comprometimento (ativo, visível, consistente e sustentável) com o comportamento e conduta requeridos a todos?', 
		8, 2, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Encorajar comportamentos que criam e apoiam o compliance. Prevendo e não tolerando comportamentos que comprometam a conformidade.',
		'A alta direção encoraja comportamentos que criam e apoiam o compliance, e prever e não tolera comportamentos que comprometem a conformidade?', 
		8, 3, false, true, false );

INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Governança de compliance ambiental', 
		'A alta direção deve garantir que os princípios do compliance ambiental serão implementados na organização.',
		2, 3);
		
		
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('1. Garantir que seus princípios serão implementados:',
		'A alta direção garante que seus princípios serão implementados, com: (1) acesso direto da função de compliance ambiental à alta direção (2)Independência na função de compliance e (3)Competência e autoridade apropriada para a função de compliance?', 
		9, 1, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('1. Garantir que seus princípios serão implementados:',
		'A alta direção garante que seus princípios serão implementados, com independência na função de compliance?', 
		9, 2, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('1. Garantir que seus princípios serão implementados:',
		'A alta direção garante que seus princípios serão implementados, com competência e autoridade apropriada para a função de compliance?', 
		9, 3, false, true, false );



INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Política',
		'A organização deve estabelecer, implementar e manter uma política de conformidade ética e legal ambiental adequada ao contexto operacional da instituição.',
		2, 4);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A alta direção possui uma política de conformidade ética e legal ambiental?',
		'A alta direção possui uma política de conformidade ética e legal ambiental?', 
		10, 1, true, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('1. Estabelecer, implementar e manter uma política ambiental e de compliance:',
		'A política de conformidade ética e legal ambiental é apropriada ao propósito da organização?', 
		10, 2, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('1. Estabelecer, implementar e manter uma política ambiental e de compliance:',
		'A política de conformidade ética e legal ambiental tem estrutura para estabelecer os objetivos de conformidade ambiental?', 
		10, 3, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('1. Estabelecer, implementar e manter uma política ambiental e de compliance:',
		'A política de conformidade ética e legal ambiental inclui o comprometimento com a proteção do meio ambiente (incluindo prevenção) e que reúna requisitos aplicáveis?', 
		10, 4, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('1. Estabelecer, implementar e manter uma política ambiental e de compliance:',
		'A política de conformidade ética e legal ambiental inclui comprometimento em atender os requisitos legais e outros requisitos?', 
		10, 5, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('1. Estabelecer, implementar e manter uma política ambiental e de compliance:',
		'A política de conformidade ética e legal ambiental inclui comprometimento com melhoria contínua?', 
		10, 6, true, false, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ser mantida como informação documentada',
		'A política é mantida como informação documentada?', 
		10, 7, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ser comunicada na organização',
		'A política é comunicada na organização?', 
		10, 8, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Estar disponível para as partes interessadas ',
		'A política está disponível para as partes interessadas?', 
		10, 9, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ser alinhada com os valores objetivos e estratégias da organização',
		'A política está alinhada com os valores objetivos e estratégias da organização?', 
		10, 10, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Exigir o compliance com as obrigações de compliance da organização',
		'A política as obrigações de compliance da organização?', 
		10, 11, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Apoiar o cumprimento dos princípios de governança de compliance (e meio ambiente)',
		'A política apoia o cumprimento dos princípios de governança para a conformidade ética e legal para o meio ambiente?', 
		10, 12, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Descrever a função de compliance (ambiental)',
		'A política descreve a função de compliance ambiental?', 
		10, 13, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Contornar as não conformidades das obrigações de compliance, políticas, processos e prodedimentos',
		'A política contorna as não conformidades das obrigações de compliance, políticas, processos e procedimentos?', 
		10, 14, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Encorajar o interesse e proibir qualquer forma de retaliação',
		'A política encoraja o interesse à conformidade e proíbe qualquer forma de retaliação?', 
		10, 15, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ter a escrita em linguagem simples para que qualquer pessoa facilmente compreenda os princípios e intenções',
		'A política tem sua escrita em linguagem simples para que qualquer pessoa facilmente compreenda os princípios e intenções?', 
		10, 16, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ser devidamente implementado e aplicado',
		'A política é devidamente implementada e aplicada?', 
		10, 17, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ser avaliado como um documento de informação',
		'A política é avaliada como um documento de informação?', 
		10, 18, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ser comunicado dentro da organização',
		'A política é comunicada dentro da organização?', 
		10, 19, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ser avaliado como apropriado pelas partes interessadas',
		'A política é avaliada como apropriada pelas partes interessadas?', 
		10, 20, false, true, false );
		
INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Papéis, responsabilidades e autoridades', 
		'A alta administração deve garantir e comunicar os papeis, resposabilidades e autoridades relacionadas ao processo de compliance da organização. Supervisionando e garantindo seu devido funcionamento.',
		2, 5);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Garantir que as responsabilidades e as autoridades para papéis pertinentes sejam atribuídos e comunicados dentro da organização',
		'A alta direção garante que as responsabilidades e as autoridades para os papéis pertinentes são atribuídas e comunicadas dentro da organização?', 
		11, 1, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Garantir que o Sistema de Gestão esteja conforme os requisitos deste documento',
		'A alta direção garante que a gestão da empresa está conforme os requisitos deste documento?', 
		11, 2, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Relatar o desempenho do SGC para o corpo diretivo e a alta direção, incluindo o desempenho ambiental',
		'A alta direção recebe o desempenho das conformidades éticas e legais para o meio ambiente?', 
		11, 3, true, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Garantir que a alta administração seja avaliada em relação ao cumprimento dos objetivos de compliance',
		'É garantido que a alta direção é avaliada quanto ao cumprimento de seus objetivos de conformidade ética e legal ambiental?', 
		11, 4, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Supervisionar a alta direção em relação a operação do SGC',
		'A alta direção é supervisionada em relação às operações de conformidade ética e legal ambiental?', 
		11, 5, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Alocar recursos adequados para estabilizar, desenvolver, implementar, avaliar, manter e melhorar o SGC',
		'Existem recursos alocados para estabilizar, desenvolver, implementar, avaliar, manter e melhorar as conformidades éticas e legais ambientais?', 
		11, 6, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Garantir a efetividade do sistema de ralatórios oportunos sobre o desempenho de conformidade ',
		'Existe garantia da efetividade dos relatórios sobre o desempenho de conformidade ética e legal ambiental?', 
		11, 7, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Garantir o alinhamento entre os alvos estratégicos e opracionais e as obrigações de compliance ',
		'Existe alinhamento entre os alvos estratégicos e operacionais e as obrigações de conformidade ética e legal ambiental?', 
		11, 8, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Estabelecer e manter mecanismos de prestação de contas incluindo ações disiciplinares e consequencias',
		'Existem mecanismos de prestação de contas incluindo sobre as ações disciplinares e suas consequências?', 
		11, 9, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Garantir a integração da performance de compliance nas performances de avaliação de desempenho de pessoal',
		'Existe integração das conformidades ética e legal ambiental e da avaliação de desempenho?', 
		11, 10, false, true, false );


INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Função de compliance ambiental', 
		'O processo de Compliance Ambiental da organização deve identificar os requisitos legais, éticos e outros requisitos que são aplicados ao contexto da organização e manter um ciclo de planejamento, execução, verificação e melhoria contínua do seu processo.',
		2, 6);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('A oraganização tem uma função específica de compliance ambiental para tratar das conformodades éticas e legais ambientais da organização?',
		'A organização tem uma função específica de compliance ambiental para tratar das conformidades éticas e legais ambientais da organização?', 
		12, 1, false, true, true );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Facilitar a identificação das obrigações de compliance',
		'A função de compliance ambiental identifica as obrigações de conformidade?', 
		12, 2, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Documentar as avaliações de risco de conformidade',
		'A função de compliance ambiental documenta e avalia os riscos de compliance?', 
		12, 3, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Alinhar o SGC com os objetivos de compliance',
		'A função de compliance ambiental alinha a gestão com os objetivos da conformidade para o meio ambiente?', 
		12, 4, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Monitorar e mediar o desempenho de compliance',
		'A função de compliance ambiental monitora e concilia o desempenho da conformidade?', 
		12, 5, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Analisar e avaliar a performance do SGC para identificar qialquer necessidade de ações corretivas',
		'A função de compliance ambiental avalia a performance da gestão para identificar as ações corretivas?', 
		12, 6, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Estabelecer um relatório de compliance e um sistema de documentos',
		'A função de compliance ambiental estabelece relatórios e sistema de documentos relacionados às conformidades éticas e legais ambientais?', 
		12, 7, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Garantir que o SGC seja revisado em intervalos planejados (9.2 e 9.3)',
		'A função de compliance ambiental garante que a gestão das conformidades éticas e legais ambientais sejam revisadas periodicamente?', 
		12, 8, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Estabelecer um sistema que levante questões e garanta que as preocupações sejam tratadas',
		'A função de compliance ambiental estabelece um sistema que levanta questões e garante o tratamento das preocupações?', 
		12, 9, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ser responsavel por cumprir as obrigações de compliance identificadas estão apropriadamente alocadas em toda a organização',
		'A função de compliance ambiental supervisiona se as obrigações de compliance estão alocadas em toda a organização?', 
		12, 10, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('As obrigações de compliance são integradas nas políticas, processos e procedimentos',
		'A função de compliance ambiental supervisiona se as obrigações de compliance são integradas nas políticas, processos e procedimentos?', 
		12, 11, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Todo o pessoal relevante é treinado conforme o necessário',
		'A função de compliance ambiental supervisiona se todo o pessoal relevante é treinado como necessário?', 
		12, 12, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Os indicadores de peformance de compliance estão estabelecidos',
		'A função de compliance ambiental supervisiona os indicadores de conformidade ética e legal ambiental estabelecidos?', 
		12, 13, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('O pessoal com acesso a recursos sobre políticas, processos e procedimentos de compliance',
		'A função de compliance ambiental fornece o acesso a recursos sobre políticas, processos e procedimentos de conformidade ética e legal ambiental?', 
		12, 14, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Assessoria às organizações em questões relaciondas a compliance',
		'A função de compliance ambiental fornece assessoria em questões relacionadas à conformidade?', 
		12, 15, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Ao tomador de decisão sênior a oportunidade de contribuir antecipadamente no processo de tomada de decisão',
		'O tomador de decisão sênior tem a oportunidade de contribuir antecipadamente no processo de tomada de decisão da função de compliance ambiental?', 
		12, 16, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Todos os níveis da organização',
		'A função de compliance ambiental tem acesso a todos os níveis da organização?', 
		12, 17, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Todas as pessoas, informações documentais e dados necessários',
		'A função de compliance ambiental tem acesso a todas as pessoas, informações documentais e dados necessários?', 
		12, 18, false, true, false);
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Aconselhamento especializado em leis relevantes, regulamentos códigos e padrão de organização',
		'A função de compliance ambiental tem acesso a aconselhamento especializado em leis relevantes, regulamentos, códigos e padrão de organização?', 
		12, 19, false, true, false);
		
		
INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Administração', 
		'A alta administração deve patrocinar, cooperar e apoiar as ações de compliance ambiental da organização e estimular os colaboradores a participarem de forma ativa do processo.',
		2, 7);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Cooperando e apoiando a função de compliance e encoranjando pessoas a fazer o mesmo',
		'A alta administração coopera e apoia a função de compliance ambiental e encoraja outros a fazerem o mesmo?', 
		13, 1, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Garantindo que todas as pessoas dentro do seu controle cumpram com as obrigações, politicas, processos e procedimentos do compliance na organização ',
		'A alta administração garante que as pessoas sob seu controle cumprem as obrigações, políticas e processos de conformidade ética e legal ambiental?', 
		13, 2, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Identificando e comunique riscos de compliance de suas operações',
		'A alta administração identifica e comunica os riscos de conformidade ética e legal ambiental das suas operações?', 
		13, 3, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Integrando obrigações de compliance em práticas e procedimentos de negócios exixtentes na sua área de responsabilidade',
		'A alta administração integra as obrigações de conformidade ética e legal ambiental em práticas de negócio na sua área de responsabilidade?', 
		13, 4, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Atendendo e apoiando atividades de treinamento de compliance',
		'A alta administração atende e apoia os treinamentos para conformidade ética e legal ambiental?', 
		13, 5, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Desenvolvendo consciência pessoal das obrigações de compliance e direcionando suas reuniões de treinamento e requisitos de competência',
		'A alta administração desenvolve a consciência pessoal sobre obrigações de compliance ambiental e direciona os treinamentos e requisitos de competência para esse conteúdo?', 
		13, 6, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Encorajando seu pessoal a aumentar o interesse por compliance e impedindo formas de retalização',
		'A alta administração encoraja o interesse do pessoal por compliance ambiental e impede formas de retaliação?', 
		13, 7, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Participando ativamente na gestão e nas soluções de incidentes relacionados a compliance e questões conforme necessário.',
		'A alta administração participa ativamente da gestão e soluções de incidentes de conformidades éticas e legais ambientais?', 
		13, 8, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Garantindo que para uma necessidade de ação corretiva identificada, ações corretivas apropriadas sejam recomendadas e implementadas',
		'A alta administração garante que para uma necessidade de ação corretiva identificada, as ações corretivas apropriadas sejam recomendadas e implementadas?', 
		13, 9, false, true, false );
		

INSERT INTO item (descricao, plano_acao, id_etapa, ordem) 
values ('Pessoal', 
		'Os colaboradores da organização devem aderir as obrigações relacionadas ao Compliance Ambiental, comunicando problemas e falhas no processo de compliance e participando de treinamentos sobre os requisitos definidos pela organização.',
		2, 8);

INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('O pessoal deve: aderir as obrigações, políticas, processos e procedimentos de compliance da organização',
		'O pessoal adere às obrigações, políticas, processos e procedimentos de conformidade ambiental da organização?', 
		14, 1, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Comunicar preocupações, problemas e falhas de compliance',
		'O pessoal comunica preocupações, problemas e falhas de conformidade ambiental?', 
		14, 2, false, true, false );
INSERT INTO requisito (descricao, pergunta, id_item,ordem, is_sga, is_sgc, is_pular_item) 
values ('Participar dos treinamentos como requisitos',
		'O pessoal participa dos treinamentos?', 
		14, 3, false, true, false );


