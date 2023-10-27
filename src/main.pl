:- consult('database/disciplinas_obrigatorias.pl').
:- consult('database/disciplinas_cursadas.pl').

main :- menu.

menu :-
    writeln("Total de disciplinas cursadas:"),
    total_disciplinas_cursadas(Total),
    writeln(Total),
    writeln("Quantas disciplinas voce deseja cursar no proximo semestre?"),
    read(QuantidadeDesejada),
    writeln("Deseja criar o arquivo 'disciplinas_nao_cursadas.pl'? (s/n)"),
    read(Resposta),
    (Resposta = 's' -> 
        filtrar_disciplinas_nao_cursadas(DisciplinasNaoCursadas),
        criar_arquivo_disciplinas_nao_cursadas(DisciplinasNaoCursadas);
        true
    ).
    % recomenda_grade_horaria(QuantidadeDesejada).

total_disciplinas_cursadas(Total) :-
    findall(_, disciplina_cursada(_, _), Disciplinas),
    length(Disciplinas, Total).

disciplina_cursada(Codigo) :-
    disciplina_cursada(Codigo, _).

filtrar_disciplinas_nao_cursadas(DisciplinasNaoCursadas) :-
    findall((Codigo, QtdCredito, Obrigatorio, Nome, PreRequisito),
        (disciplina_obrigatoria(Codigo, QtdCredito, Obrigatorio, Nome, PreRequisito),
         \+ disciplina_cursada(Codigo)),
        DisciplinasNaoCursadas).

criar_arquivo_disciplinas_nao_cursadas(DisciplinasNaoCursadas) :-
    tell('src/database/disciplinas_nao_cursadas.pl'),
    format('% Arquivo gerado automaticamente com disciplinas não cursadas\n\n', []),
    format('% Disciplinas não cursadas:\n', []),
    salvar_disciplinas(DisciplinasNaoCursadas),
    told.

salvar_disciplinas([]).
salvar_disciplinas([(Codigo, QtdCredito, Obrigatorio, Nome, PreRequisito)|Resto]) :-
    format("disciplina_obrigatoria('~w', ~w, ~w, '~w', ~w).\n", [Codigo, QtdCredito, Obrigatorio, Nome, PreRequisito]),
    salvar_disciplinas(Resto).