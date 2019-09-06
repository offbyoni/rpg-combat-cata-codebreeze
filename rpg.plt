:- begin_tests(character).
:- include(rpg).
level(adam, 1).
health(adam, 1000).
health(diana, 0).
test('adam has 1000 health') :-
          health(adam, 1000).
test('adam has level 1') :-
          level(adam, 1).
test('adam is alive') :-
          alive(adam).
test('diana is dead') :-
          dead(diana).
:- end_tests(character).