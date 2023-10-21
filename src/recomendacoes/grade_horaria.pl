:- consult('database/disciplinas_obrigatorias.pl').

% disciplina(Codigo, QtdCredito, Obrigatorio, Nome, PreRequisito).
recomendaGrade(disciplinas_cursadas) :-
    % Logica para recomendar as disciplinas e definir a resposta

    % Deve exibir as disciplinas recomendadas no console
    writeln("Disciplinas recomendadas:"),
    disciplinas_cursadas(Codigo, Nome),
    write(Codigo), write(' - '), write(Nome), nl,
    writeln("Fim da recomendação da grade.").
