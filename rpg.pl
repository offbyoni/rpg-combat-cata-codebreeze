:- use_module(library(plunit)).
:- load_test_files([make(all)]).

alive(N) :- currentHealth(N, X), X > 0.

dead(N) :- \+ alive(N).

currentHealth(N, X) :-
    initialHealth(N, Y),
    damage(_, N, Z),
    X is max(Y - Z, 0).

currentHealth(N, X) :-
    initialHealth(N, Y),
    Y > 0,
    heal(_, N, Z),
    X is min(Y + Z, 1000).

currentHealth(N, X) :-
    initialHealth(N, 0),
    heal(_, N, _),
    X is 0.
