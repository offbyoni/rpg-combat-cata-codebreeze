:- use_module(library(plunit)).
:- load_test_files([make(all)]).

alive(N) :- currenthealth(N, X), X > 0.

dead(N) :- \+ alive(N).

currenthealth(N, X) :-
    health(N, Y),
    damage(_, N, Z),
    X is max(Y - Z, 0).

currenthealth(N, X) :-
    health(N, Y),
    Y > 0,
    heal(_, N, Z),
    X is min(Y + Z, 1000).

currenthealth(N, X) :-
    health(N, 0),
    heal(_, N, _),
    X is 0.
