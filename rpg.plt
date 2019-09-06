:- begin_tests(character).
:- include(rpg).
test('new character has 1000 health') :-
          character(health, 1000).
test('new character has level 1') :-
          character(level, 1).
test('new character is alive') :-
          character(alive).
:- end_tests(character).