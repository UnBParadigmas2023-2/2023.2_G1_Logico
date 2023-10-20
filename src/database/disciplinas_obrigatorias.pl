% disciplina(Codigo, QtdCredito, Obrigatorio, Nome, PreRequisito).
% 1º Semestre
disciplina('MAT0025', 6, true, 'CÁLCULO 1', []).
disciplina('CIC0004', 6, true, 'ALGORITMOS E PROGRAMAÇÃO DE COMPUTADORES', []).
disciplina('FGA0168', 6, true, 'DESENHO INDUSTRIAL ASSISTIDO POR COMPUTADOR', []).
disciplina('FGA0161', 4, true, 'ENGENHARIA E AMBIENTE', []).
disciplina('FGA0163', 4, true, 'INTRODUÇÃO À ENGENHARIA', []).

% 2º Semestre
disciplina('MAT0026', 6, true, 'CÁLCULO 2', ['MAT0025']).
disciplina('IFD0171', 4, true, 'FISICA 1', []).
disciplina('IFD0173', 2, true, 'FISICA 1 EXPERIMENTAL', []).
disciplina('MAT0031', 4, true, 'INTRODUCAO A ALGEBRA LINEAR', []).
disciplina('FGA0157', 4, true, 'PROBABILIDADE E ESTATÍSTICA APLICADO A ENGENHARIA', ['MAT0025']).

% 3º Semestre
disciplina('FGA0160', 4, true, 'MÉTODOS NUMÉRICOS PARA ENGENHARIA', ['MAT0026']).
disciplina('FGA0133', 4, true, 'ENGENHARIA ECONÔMICA', []).
disciplina('FGA0164', 4, true, 'HUMANIDADES E CIDADANIA', []).
disciplina('FGA0073', 4, true, 'TEORIA DE ELETRÔNICA DIGITAL 1', ['MAT0031']).
disciplina('FGA0071', 2, true, 'PRÁTICA DE ELETRÔNICA DIGITAL 1', ['MAT0031']).
disciplina('FGA0158', 4, true, 'ORIENTAÇÃO A OBJETOS', ['CIC0004']).
disciplina('FGA0085', 4, true, 'MATEMÁTICA DISCRETA 1', []).

% 4º Semestre
disciplina('21F0184', 4, true, 'GESTÃO DA PRODUÇÃO E QUALIDADE', ['FGA0170', 'FGA0133']).
disciplina('FGA0138', 4, true, 'MÉTODOS DE DESENVOLVIMENTO DE SOFTWARE', ['FGA0085']).
disciplina('FGA0147', 4, true, 'ESTRUTURA DE DADOS E ALGORITMOS', ['CIC0004']).
disciplina('FGA0142', 4, true, 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES', ['FGA0071', 'FGA0073']).
disciplina('FGA0108', 4, true, 'MATEMÁTICA DISCRETA 2', ['FGA0085']).
disciplina('FGA0150', 4, true, 'PROJETO INTEGRADOR DE ENGENHARIA 1', []).

% 5º Semestre
disciplina('FGA0173', 4, true, 'INTERAÇÃO HUMANO COMPUTADOR', ['FGA0138']).
disciplina('FGA0172', 4, true, 'REQUISITOS DE SOFTWARE', ['FGA0138']).
disciplina('FGA0137', 4, true, 'SISTEMAS DE BANCO DE DADOS 1', ['FGA0108']).
disciplina('FGA0170', 4, true, 'FUNDAMENTOS DE SISTEMAS OPERACIONAIS', ['FGA0142']).
disciplina('FGA0003', 4, true, 'COMPILADORES 1', ['FGA0147']).
disciplina('FGA0030', 4, true, 'ESTRUTURAS DE DADOS 2', ['FGA0147']).

% 6º Semestre
disciplina('FGA0278', 4, true, 'QUALIDADE DE SOFTWARE 1', ['FGA0173', 'FGA0184']).
disciplina('FGA0238', 4, true, 'TESTES DE SOFTWARE', ['FGA0138']).
disciplina('FGA0208', 4, true, 'ARQUITETURA E DESENHO DE SOFTWARE', ['FGA0172']).
disciplina('FGA0211', 4, true, 'FUNDAMENTOS DE REDES DE COMPUTADORES', ['FGA0170']).
disciplina('FGA0060', 4, true, 'SISTEMAS DE BANCO DE DADOS 2', ['FGA0137']).

% 7º Semestre
disciplina('FGA0242', 4, true, 'TÉCNICAS DE PROGRAMAÇÃO EM PLATAFORMAS EMERGENTES', ['FGA0208', 'FGA0238']).
disciplina('FGA0210', 4, true, 'PARADIGMAS DE PROGRAMAÇÃO', ['FGA0158', 'FGA0003']).
disciplina('FGA0109', 4, true, 'FUNDAMENTOS DE SISTEMAS EMBARCADOS', ['FGA0170']).
disciplina('FGA0244', 4, true, 'PROGRAMAÇÃO PARA SISTEMAS PARALELOS E DISTRIBUÍDOS', ['FGA0211']).

% 8º Semestre
disciplina('FGA0206', 4, true, 'ENGENHARIA DE PRODUTO DE SOFTWARE', ['FGA0242']).
disciplina('FGA0240', 4, true, 'GERÊNCIA DE CONFIGURAÇÃO E EVOLUÇÃO DE SOFTWARE', ['FGA0238']).

% 9º Semestre
disciplina('FGA0250', 6, true, 'PROJETO INTEGRADOR DE ENGENHARIA 2', ['FGA0150']).
disciplina('FGA0009', 4, true, 'TRABALHO DE CONCLUSÃO DE CURSO 1', []).

% 10º Semestre
disciplina('FGA0011', 4, true, 'TRABALHO DE CONCLUSÃO DE CURSO 2', []).
