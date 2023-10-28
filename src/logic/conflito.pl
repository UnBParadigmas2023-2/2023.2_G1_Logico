:- consult("../database/turmas.pl").


verificarConflitos(Turmas, TurmasSemConflito) :-
    removerConflitos(Turmas, [], TurmasSemConflito).

% Predicado para remover turmas conflitantes de uma lista de turmas
removerConflitos([], TurmasSemConflito, TurmasSemConflito).
removerConflitos([Turma | Resto], TurmasAtuais, TurmasSemConflito) :-
    \+ temConflito(Turma, TurmasAtuais),
    append(TurmasAtuais, [Turma], NovasTurmasAtuais),
    removerConflitos(Resto, NovasTurmasAtuais, TurmasSemConflito).
removerConflitos([_ | Resto], TurmasAtuais, TurmasSemConflito) :-
    removerConflitos(Resto, TurmasAtuais, TurmasSemConflito).


% Predicado para verificar se uma turma tem conflito de horário com uma lista de turmas
temConflito(Turma, Turmas) :-
    member(OutraTurma, Turmas),
    Turma \== OutraTurma,
    temChoqueHorario(Turma, OutraTurma).

% Predicado para verificar se duas turmas têm choque de horário
temChoqueHorario(Turma1, Turma2) :-
    turma(Turma1, _, Horario1),
    turma(Turma2, _, Horario2),
    split_string(Horario1, " ", "", ListaHorario1),
    split_string(Horario2, " ", "", ListaHorario2),
    temIntersecao(ListaHorario1, ListaHorario2).

% Predicado para verificar se duas listas têm interseção
temIntersecao([], _) :- false.
temIntersecao([H|T], Lista2) :-
    (member(H, Lista2) -> true ; temIntersecao(T, Lista2)).
