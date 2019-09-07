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
    heal(_, N, Z),
    X is Y + Z.
