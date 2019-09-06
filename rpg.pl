:- use_module(library(plunit)).
:- load_test_files([make(all)]).
character(adam, level, 1).
character(adam, health, 1000).
character(N, alive) :- character(N, health, X), X > 0.
