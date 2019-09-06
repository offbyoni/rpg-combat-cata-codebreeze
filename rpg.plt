:- begin_tests(character).
:- include(rpg).
character(adam, level, 1).
character(adam, health, 1000).
character(diana, health, 0).
test('adam has 1000 health', [nondet]) :-
          character(adam, health, 1000).
test('adam has level 1', [nondet]) :-
          character(adam, level, 1).
test('adam is alive') :-
          alive(adam).
test('diana is dead') :-
          dead(diana).
:- end_tests(character).