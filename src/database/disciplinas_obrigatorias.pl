% disciplina_obrigatoria(Codigo, QtdCredito, Obrigatorio, Nome).
% 1º Semestre
disciplina_obrigatoria('MAT0025', 6, true, 'CÁLCULO 1').
disciplina_obrigatoria('CIC0004', 6, true, 'ALGORITMOS E PROGRAMAÇÃO DE COMPUTADORES').
disciplina_obrigatoria('FGA0168', 6, true, 'DESENHO INDUSTRIAL ASSISTIDO POR COMPUTADOR').
disciplina_obrigatoria('FGA0161', 4, true, 'ENGENHARIA E AMBIENTE').
disciplina_obrigatoria('FGA0163', 4, true, 'INTRODUÇÃO À ENGENHARIA').

% 2º Semestre
disciplina_obrigatoria('MAT0026', 6, true, 'CÁLCULO 2').
prerequisito('MAT0026','MAT0025').
disciplina_obrigatoria('IFD0171', 4, true, 'FISICA 1').
disciplina_obrigatoria('IFD0173', 2, true, 'FISICA 1 EXPERIMENTAL').
disciplina_obrigatoria('MAT0031', 4, true, 'INTRODUCAO A ALGEBRA LINEAR').
disciplina_obrigatoria('FGA0157', 4, true, 'PROBABILIDADE E ESTATÍSTICA APLICADO A ENGENHARIA').
prerequisito('FGA0157','MAT0025').

% 3º Semestre
disciplina_obrigatoria('FGA0160', 4, true, 'MÉTODOS NUMÉRICOS PARA ENGENHARIA').
prerequisito('FGA0160','MAT0026').
disciplina_obrigatoria('FGA0133', 4, true, 'ENGENHARIA ECONÔMICA').
disciplina_obrigatoria('FGA0164', 4, true, 'HUMANIDADES E CIDADANIA').
disciplina_obrigatoria('FGA0073', 4, true, 'TEORIA DE ELETRÔNICA DIGITAL 1').
prerequisito('FGA0073','MAT0031').
disciplina_obrigatoria('FGA0071', 2, true, 'PRÁTICA DE ELETRÔNICA DIGITAL 1').
prerequisito('FGA0071','MAT0031').
disciplina_obrigatoria('FGA0158', 4, true, 'ORIENTAÇÃO A OBJETOS').
prerequisito('FGA0158','CIC0004').
disciplina_obrigatoria('FGA0085', 4, true, 'MATEMÁTICA DISCRETA 1').

% 4º Semestre
disciplina_obrigatoria('FGA0184', 4, true, 'GESTÃO DA PRODUÇÃO E QUALIDADE').
prerequisito('FGA0184','FGA0133').
disciplina_obrigatoria('FGA0138', 4, true, 'MÉTODOS DE DESENVOLVIMENTO DE SOFTWARE').
prerequisito('FGA0138','FGA0085').
disciplina_obrigatoria('FGA0147', 4, true, 'ESTRUTURA DE DADOS E ALGORITMOS').
prerequisito('FGA0147','CIC0004').
disciplina_obrigatoria('FGA0142', 4, true, 'FUNDAMENTOS DE ARQUITETURA DE COMPUTADORES').
prerequisito('FGA0142','FGA0071').
prerequisito('FGA0142','FGA0073').
disciplina_obrigatoria('FGA0108', 4, true, 'MATEMÁTICA DISCRETA 2').
prerequisito('FGA0108','FGA0085').
disciplina_obrigatoria('FGA0150', 4, true, 'PROJETO INTEGRADOR DE ENGENHARIA 1').

% 5º Semestre
disciplina_obrigatoria('FGA0173', 4, true, 'INTERAÇÃO HUMANO COMPUTADOR').
prerequisito('FGA0173','FGA0138').
disciplina_obrigatoria('FGA0172', 4, true, 'REQUISITOS DE SOFTWARE').
prerequisito('FGA0172','FGA0138').
disciplina_obrigatoria('FGA0137', 4, true, 'SISTEMAS DE BANCO DE DADOS 1').
prerequisito('FGA0137','FGA0108').
disciplina_obrigatoria('FGA0170', 4, true, 'FUNDAMENTOS DE SISTEMAS OPERACIONAIS').
prerequisito('FGA0170','FGA0142').
disciplina_obrigatoria('FGA0003', 4, true, 'COMPILADORES 1').
prerequisito('FGA0003','FGA0147').
disciplina_obrigatoria('FGA0030', 4, true, 'ESTRUTURAS DE DADOS 2').
prerequisito('FGA0030','FGA0147').

% 6º Semestre
disciplina_obrigatoria('FGA0278', 4, true, 'QUALIDADE DE SOFTWARE 1').
prerequisito('FGA0278','FGA0173').
prerequisito('FGA0278','FGA0184').
disciplina_obrigatoria('FGA0238', 4, true, 'TESTES DE SOFTWARE').
prerequisito('FGA0238','FGA0138').
disciplina_obrigatoria('FGA0208', 4, true, 'ARQUITETURA E DESENHO DE SOFTWARE').
prerequisito('FGA0208','FGA0172').
disciplina_obrigatoria('FGA0211', 4, true, 'FUNDAMENTOS DE REDES DE COMPUTADORES').
prerequisito('FGA0211','FGA0170').
disciplina_obrigatoria('FGA0060', 4, true, 'SISTEMAS DE BANCO DE DADOS 2').
prerequisito('FGA0060','FGA0137').

% 7º Semestre
disciplina_obrigatoria('FGA0242', 4, true, 'TÉCNICAS DE PROGRAMAÇÃO EM PLATAFORMAS EMERGENTES').
prerequisito('FGA0208''FGA0242', 'FGA0238']).
disciplina_obrigatoria('FGA0210', 4, true, 'PARADIGMAS DE PROGRAMAÇÃO').
prerequisito('FGA0158''FGA0210', 'FGA0003']).
disciplina_obrigatoria('FGA0109', 4, true, 'FUNDAMENTOS DE SISTEMAS EMBARCADOS').
prerequisito('FGA0109','FGA0170').
disciplina_obrigatoria('FGA0244', 4, true, 'PROGRAMAÇÃO PARA SISTEMAS PARALELOS E DISTRIBUÍDOS').
prerequisito('FGA0244','FGA0211').

% 8º Semestre
disciplina_obrigatoria('FGA0206', 4, true, 'ENGENHARIA DE PRODUTO DE SOFTWARE').
prerequisito('FGA0206','FGA0242').
disciplina_obrigatoria('FGA0240', 4, true, 'GERÊNCIA DE CONFIGURAÇÃO E EVOLUÇÃO DE SOFTWARE').
prerequisito('FGA0240','FGA0238').

% 9º Semestre
disciplina_obrigatoria('FGA0250', 6, true, 'PROJETO INTEGRADOR DE ENGENHARIA 2').
prerequisito('FGA0250','FGA0150').
disciplina_obrigatoria('FGA0009', 4, true, 'TRABALHO DE CONCLUSÃO DE CURSO 1').

% 10º Semestre
disciplina_obrigatoria('FGA0011', 4, true, 'TRABALHO DE CONCLUSÃO DE CURSO 2').
