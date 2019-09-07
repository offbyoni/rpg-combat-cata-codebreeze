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

test('new character adam has 1000 health') :-
          character(adam, 1000, _).
test('new character adam has level 1') :-
          character(adam, _, 1).
test('new character adam is alive') :-
          alive(adam).
test('bea is dead because they have 0 health') :-
          dead(bea).
test('adam can be damaged') :-
          currentHealth(adam, 900).
test('fiona can be healed') :-
          currentHealth(fiona, 20).
test('diana with 0 health cannot be healed') :-
          currentHealth(diana, 0).
test('charlie cannot take more damage than their current health') :-
          currentHealth(charlie, 0).
test('charlie is dead after taking more damage than they have') :-
          dead(charlie).
test('eric cannot be healed above 1000 health') :-
          currentHealth(eric, 1000).
:- end_tests(character).