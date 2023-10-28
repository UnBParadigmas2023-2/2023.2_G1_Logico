:- consult('database/disciplinas_obrigatorias.pl').
:- consult('database/disciplinas_cursadas.pl').

main :- menu.

menu :-
    writeln("Total de disciplinas cursadas:"),
    total_disciplinas_cursadas(Total),
    writeln(Total),
    writeln("Quantas disciplinas voce deseja cursar no proximo semestre?"),
    read(QuantidadeDesejada),
    filtrar_disciplinas_nao_cursadas(DisciplinasNaoCursadas),
    writeln("Deseja criar o arquivo 'disciplinas_nao_cursadas.pl'? (s/n)"),
    read(Resposta),
    (Resposta = 's' -> 
        criar_arquivo_disciplinas_nao_cursadas(DisciplinasNaoCursadas);
        true
    ),
    recomenda_grade_horaria(DisciplinasNaoCursadas, QuantidadeDesejada).

recomenda_grade_horaria(DisciplinasNaoCursadas, QuantidadeDesejada) :-
    writeln("Recomenda grade"),
    maior_cadeia_de_pre_requisitos(MaiorCadeia),
    printa_grade(MaiorCadeia, QuantidadeDesejada).

maior_cadeia_de_pre_requisitos(Cadeia) :-
    findall([Disciplina, Credito, Obrigatorio, Nome, CadeiaDisciplina], (
        disciplina_obrigatoria(Disciplina, Credito, Obrigatorio, Nome),
        \+ disciplina_cursada(Disciplina),
        cadeia_de_pre_requisitos(Disciplina, CadeiaDisciplina, 0)
    ), Cadeias),
    sort(2, @>=, Cadeias, SortedCadeias),
    SortedCadeias = Cadeia.

cadeia_de_pre_requisitos(_,Cadeia,_).
cadeia_de_pre_requisitos(Disciplina, Cadeia, TamanhoCadeia) :-
    NovoTamanho is TamanhoCadeia+1,
    prerequisito(Disciplina, PreRequisito),
    cadeia_de_pre_requisitos(PreRequisito, Cadeia, NovoTamanho),
    Cadeia is NovoTamanho.

cadeia_de_pre_requisitos([Disciplina|Resto], Cadeia, TamanhoCadeia) :-
    cadeia_de_pre_requisitos(Resto, Cadeia, TamanhoCadeia),
    cadeia_de_pre_requisitos(Disciplina, Cadeia, TamanhoCadeia).

printa_grade([], _).
printa_grade(_,0).
printa_grade([Disciplina|Resto], QuantidadeDesejada):-
    NovaQuantidade is QuantidadeDesejada-1,
    write("Disciplina:"),
    writeln(Disciplina),
    printa_grade(Resto, NovaQuantidade).

total_disciplinas_cursadas(Total) :-
    findall(_, disciplina_cursada(_, _), Disciplinas),
    length(Disciplinas, Total).

disciplina_cursada(Codigo) :-
    disciplina_cursada(Codigo, _).

filtrar_disciplinas_nao_cursadas(DisciplinasNaoCursadas) :-
    findall(
        (Codigo, Nome, QtdCredito), (
            disciplina_obrigatoria(Codigo, QtdCredito, true, Nome),
            \+ disciplina_cursada(Codigo)
        ), DisciplinasNaoCursadas).

criar_arquivo_disciplinas_nao_cursadas(DisciplinasNaoCursadas) :-
    tell('src/database/disciplinas_nao_cursadas.pl'),
    format('% Arquivo gerado automaticamente com disciplinas não cursadas\n\n', []),
    format('% Disciplinas não cursadas:\n', []),
    salvar_disciplinas(DisciplinasNaoCursadas),
    told.

salvar_disciplinas([]).
salvar_disciplinas([(Codigo, QtdCredito, Obrigatorio, Nome, PreRequisito)|Resto]) :-
    format("disciplina_pendente('~w', ~w, ~w, '~w').\n", [Codigo, QtdCredito, Obrigatorio, Nome, PreRequisito]),
    salvar_disciplinas(Resto).