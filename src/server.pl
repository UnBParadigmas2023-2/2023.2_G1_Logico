:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_json)).
:- use_module(library(http/http_parameters)).
:- use_module(library(http/http_client)).
:- use_module(library(http/json_convert)).

:- consult('database/disciplinas_obrigatorias.pl').
:- consult('database/disciplinas_cursadas.pl').

:- consult('main.pl').

:- http_handler(root(.), say_hello, [method(get)]).

server(Port) :-
    http_server(http_dispatch, [port(Port)]).

say_hello(Request) :-
    format('Content-type: text/plain~n~n'),
    format('Olá, Mundo!').

:- http_handler(root(totalcursadas), total_disciplinas_cursadas_handler, [method(get)]).

total_disciplinas_cursadas_handler(_Request) :-
    total_disciplinas_cursadas(TotalCursadas),
    format('Content-type: application/json~n~n'),
    format('{"total_cursadas": ~d}', [TotalCursadas]).