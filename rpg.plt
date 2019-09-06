:- begin_tests(character).
:- include(rpg).
character(adam, level, 1).
character(adam, health, 1000).
test('new Adam has 1000 health') :-
          character(adam, health, 1000).
test('new character has level 1') :-
          character(adam, level, 1).
test('new Adam is alive') :-
          character(adam, alive).
:- end_tests(character).