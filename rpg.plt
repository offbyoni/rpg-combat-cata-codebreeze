:- begin_tests(character).
:- include(rpg).
test(newCharacter) :-
    character(1000, 1).
:- end_tests(character).