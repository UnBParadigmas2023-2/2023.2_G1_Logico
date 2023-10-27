:- consult("../database/turmas.pl").

% Verifica se há conflito de horário entre duas turmas

conflito_de_horario(Turma1, Turma2) :-
    turma(Turma1, _, Horario1),
    turma(Turma2, _, Horario2),
    Turma1 \= Turma2,
    tem_conflito_de_horario(Horario1, Horario2).

% Verifica se há conflito de horário entre os horários
tem_conflito_de_horario(Horario1, Horario2) :-
    horario_dia(Horario1, Dia1),
    horario_dia(Horario2, Dia2),
    Dia1 = Dia2, % O conflito ocorre se os dias forem iguais
    horario_horario(Horario1, Hora1),
    horario_horario(Horario2, Hora2),
    Hora1 = Hora2. % O conflito ocorre se pelo menos um horário for igual

% Função para extrair o dia do horário
horario_dia(Horario, Dia) :-
    sub_atom(Horario, 0, 1, _, Dia).

% Função para extrair o horário do dia
horario_horario(Horario, HorarioDia) :-
    sub_atom(Horario, 1, 1, _, HorarioDia).


% Função para verificar se uma matéria não entra em conflito com nenhuma outra em uma lista
nao_entra_em_conflito(_, []).
nao_entra_em_conflito(Mat, [Mat2 | Resto]) :-
    \+ conflito_de_horario(Mat, Mat2),
    nao_entra_em_conflito(Mat, Resto).

% Função principal para retornar matérias que não entram em conflito de horário
materias_sem_conflito_horario([], []).
materias_sem_conflito_horario([Mat | Resto], MatSemConflito) :-
    nao_entra_em_conflito(Mat, Resto),
    materias_sem_conflito_horario(Resto, MatSemConflitoResto),
    append([Mat], MatSemConflitoResto, MatSemConflito).
materias_sem_conflito_horario([_ | Resto], MatSemConflito) :-
    materias_sem_conflito_horario(Resto, MatSemConflito).

