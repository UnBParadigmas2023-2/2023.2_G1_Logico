:- consult('database/disciplinas_obrigatorias.pl').
:- consult('database/disciplinas_cursadas.pl').

main :- menu.

menu :-
    writeln("Total de disciplinas cursadas:"),
    total_disciplinas_cursadas(Total),
    writeln(Total),
    filtrar_disciplinas_nao_cursadas(DisciplinasNaoCursadas),
    writeln("Deseja criar o arquivo 'disciplinas_nao_cursadas.pl'? (s/n)"),
    read(Resposta),
    (Resposta = 's' -> 
        criar_arquivo_disciplinas_nao_cursadas(DisciplinasNaoCursadas);
        true
    ),
    writeln("Quantas disciplinas voce deseja cursar no proximo semestre?"),
    read(QuantidadeDesejada),
    recomenda_grade_horaria(DisciplinasNaoCursadas, QuantidadeDesejada).

recomenda_grade_horaria(DisciplinasNaoCursadas, QuantidadeDesejada) :-
    writeln("Recomenda grade"),
    maior_cadeia_de_pre_requisitos(MaiorCadeia),
    printa_grade(MaiorCadeia, QuantidadeDesejada).

maior_cadeia_de_pre_requisitos(Cadeia) :-
    findall([Disciplina, CadeiaDisciplina, Credito, Nome], (
        disciplina_obrigatoria(Disciplina, Credito, Obrigatorio, Nome),
        \+ disciplina_cursada(Disciplina),
        cadeia_de_pre_requisitos(Disciplina, [Disciplina], CadeiaDisciplina)
    ), Cadeias),
    sort(2, @>=, Cadeias, SortedCadeias),
    SortedCadeias = Cadeia.

cadeia_de_pre_requisitos(_,Cadeia,Cadeia).

cadeia_de_pre_requisitos([Disciplina|Resto], Cadeia, CadeiaDisciplina) :-
    cadeia_de_pre_requisitos(Resto, Cadeia, CadeiaDisciplina),
    cadeia_de_pre_requisitos(Disciplina, Cadeia, CadeiaDisciplina).

cadeia_de_pre_requisitos(Disciplina, CadeiaAtual, CadeiaDisciplina) :-
    prerequisito(Disciplina, PreRequisito),
    cadeia_de_pre_requisitos(PreRequisito, [PreRequisito|CadeiaAtual], CadeiaDisciplina).

printa_grade([], _).
printa_grade(_,0).
printa_grade([Disciplina|Resto], QuantidadeDesejada):-
    NovaQuantidade is QuantidadeDesejada-1,
    printa_disciplina(Disciplina),
    printa_grade(Resto, NovaQuantidade).

printa_disciplina([Codigo, CadeiaDisciplina, Credito, Nome]):-
    length(CadeiaDisciplina, TamanhoCadeia),
    write("Disciplina: "),
    write(Nome),
    write("\n\tTamanho da Cadeia: "),
    write(TamanhoCadeia),
    write("\n\tCadeia de Disciplina"),
    writeln(CadeiaDisciplina).

total_disciplinas_cursadas(Total) :-
    findall(_, disciplina_cursada(_, _), Disciplinas),
    length(Disciplinas, Total).

disciplina_cursada(Codigo) :-
    disciplina_cursada(Codigo, _).

filtrar_disciplinas_nao_cursadas(DisciplinasNaoCursadas) :-
    findall(
        (Codigo, QtdCredito, true, Nome), (
            disciplina_obrigatoria(Codigo, QtdCredito, true, Nome),
            \+ disciplina_cursada(Codigo)
        ), DisciplinasNaoCursadas).

criar_arquivo_disciplinas_nao_cursadas(DisciplinasNaoCursadas) :-
    writeln('criou arquivo'),
    tell('src/database/disciplinas_nao_cursadas.pl'),
    format('% Arquivo gerado automaticamente com disciplinas não cursadas\n\n', []),
    format('% Disciplinas não cursadas:\n', []),
    salvar_disciplinas(DisciplinasNaoCursadas),
    told.

salvar_disciplinas([]).
salvar_disciplinas([(Codigo, QtdCredito, Obrigatorio, Nome)|Resto]) :-
    format("disciplina_pendente('~w', ~w, ~w, '~w').\n", [Codigo, QtdCredito, Obrigatorio, Nome]),
    salvar_disciplinas(Resto).