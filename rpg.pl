:- use_module(library(plunit)).
:- load_test_files([make(all)]).
character(N, alive) :- character(N, health, X), X > 0.
character(N, dead) :- \+ character(N, alive).
