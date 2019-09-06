:- use_module(library(plunit)).
:- load_test_files([make(all)]).
alive(N) :- health(N, X), X > 0.
dead(N) :- \+ alive(N).
