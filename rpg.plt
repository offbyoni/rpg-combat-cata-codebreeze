:- begin_tests(character).
:- include(rpg).

% ====== facts ======
character(adam, 1000, 1).
character(bea, 0, 1).
character(charlie, 100, 1).
character(diana, 0, 1).
character(eric, 999, 1).
character(fiona, 10, 1).

damage(diana, adam, 100).
damage(adam, charlie, 110).

heal(adam, diana, 100).
heal(adam, eric, 100).
heal(diana, fiona, 10).


% ====== tests ======
:- begin_tests('new characters').
test('new character adam has 1000 health') :-
          character(adam, 1000, _).
test('new character adam has level 1') :-
          character(adam, _, 1).
test('new character adam is alive', [nondet]) :-
          alive(adam).
test('bea is dead because they have 0 health') :-
          dead(bea).
:- end_tests('new characters').

:- begin_tests('damaging characters').
test('adam can be damaged', [nondet]) :-
          currentHealth(adam, 900).
test('charlie cannot take more damage than their current health', [nondet]) :-
          currentHealth(charlie, 0).
test('charlie is dead after taking more damage than they have') :-
          dead(charlie).
:- end_tests('damaging characters').

:- begin_tests('healing characters').
test('fiona can be healed', [nondet]) :-
          currentHealth(fiona, 20).
test('diana with 0 health cannot be healed') :-
          currentHealth(diana, 0).
test('eric cannot be healed above 1000 health', [nondet]) :-
          currentHealth(eric, 1000).
:- end_tests('healing characters').

:- end_tests(character).