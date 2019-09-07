:- use_module(library(plunit)).
:- load_test_files([make(all)]).

alive(N) :- health(N, X), X > 0.

dead(N) :- \+ alive(N).

currenthealth(N, X) :-
    health(N, Y),
    damage(_, N, Z),
    X is Y - Z.

currenthealth(N, X) :-
    health(N, Y),
    heal(_, N, Z),
    X is Y + Z.
