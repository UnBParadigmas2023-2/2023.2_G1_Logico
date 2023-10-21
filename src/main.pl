:- consult('database/disciplinas_obrigatorias.pl').
:- [recomendacoes/grade_horaria].

:- dynamic disciplinas_cursadas/2.

main :- menu.

menu :-
    repeat,
    writeln("Quais disciplinas já cursou? (Digite o código). Digite 'sair' para sair"),
    nl,
    list_disciplinas_disponiveis,
    read(Cod_disciplina),
    processar_selecao(Cod_disciplina),
    (Cod_disciplina = 'sair' -> true ; fail).

% disciplinas disponiveis que ainda nao foram selecionadas
list_disciplinas_disponiveis :-
    disciplina(Codigo, _, true, Nome, _),
    \+ disciplinas_cursadas(Codigo, _),
    write(Codigo), write(' - '), write(Nome), nl,
    fail.
list_disciplinas_disponiveis.

% adiciona a disciplina à lista de disciplinas cursadas
processar_selecao(Cod_disciplina) :-
    disciplina(Cod_disciplina, _, _, Nome, _),
    assertz(disciplinas_cursadas(Cod_disciplina, Nome)),
    writeln(Nome), writeln("Disciplina adicionada à lista de disciplinas cursadas."),
    nl.

% lista de disciplinas selecionadas antes de encerrar
processar_selecao('sair') :-
    writeln("Disciplinas selecionadas:"),
    listar_disciplinas_selecionadas,
    gerar_recomendacoes,
    writeln("Encerrando o programa...").

listar_disciplinas_selecionadas :-
    disciplinas_cursadas(Codigo, Nome),
    write(Codigo), write(' - '), write(Nome), nl,
    fail.
listar_disciplinas_selecionadas.

clean_cursadas :-
    retractall(disciplinas_cursadas(_, _)).

gerar_recomendacoes :-
    % Logica para atualizar a lista de disciplinas cursadas

    % Gere as recomendações da grade horária
    recomendaGrade(disciplinas_cursadas).