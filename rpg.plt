:- begin_tests(character).
:- include(rpg).
character(adam, level, 1).
character(adam, health, 1000).
character(diana, health, 0).
test('adam has 1000 health') :-
          character(adam, health, 1000).
test('adam has level 1') :-
          character(adam, level, 1).
test('adam is alive') :-
          character(adam, alive).
test('diana is dead') :-
          character(diana, dead).
:- end_tests(character).