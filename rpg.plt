:- begin_tests(character).
:- include(rpg).

% ====== facts ======
level(adam, 1).

initialHealth(adam, 1000).
initialHealth(bea, 0).
initialHealth(charlie, 100).
initialHealth(diana, 0).
initialHealth(eric, 999).
initialHealth(fiona, 10).

damage(diana, adam, 100).
damage(adam, charlie, 110).

heal(adam, diana, 100).
heal(adam, eric, 100).
heal(diana, fiona, 10).


% ====== tests ======

test('adam has 1000 health') :-
          initialHealth(adam, 1000).
test('adam has level 1') :-
          level(adam, 1).
test('adam is alive') :-
          alive(adam).
test('bea is dead') :-
          dead(bea).
test('adam can be damaged') :-
          currentHealth(adam, 900).
test('fiona can be healed') :-
          currentHealth(fiona, 20).
test('diana with 0 health cannot be healed') :-
          currentHealth(diana, 0).
test('charlie cannot take more damage than he has') :-
          currentHealth(charlie, 0).
test('charlie is dead after taking more damage than he has') :-
          dead(charlie).
test('eric cannot be healed above 1000 health') :-
          currentHealth(eric, 1000).
:- end_tests(character).