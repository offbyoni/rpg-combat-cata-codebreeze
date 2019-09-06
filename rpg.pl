:- use_module(library(plunit)).
:- load_test_files([make(all)]).
character(health, 1000).
character(level, 1).
character(alive) :- character(health, X), X > 0.
