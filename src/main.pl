:- consult('database/disciplinas_obrigatorias.pl').
:- consult('database/disciplinas_cursadas.pl').

main :- menu.

menu :-
    writeln("Total de disciplinas cursadas:"),
    total_disciplinas_cursadas(Total),
    writeln(Total),
    writeln("Quantas disciplinas voce deseja cursar no proximo semestre?"),
    read(QuantidadeDesejada).
    % recomenda_grade_horaria(QuantidadeDesejada).

total_disciplinas_cursadas(Total) :-
    findall(_, disciplina_cursada(_, _), Disciplinas),
    length(Disciplinas, Total).
