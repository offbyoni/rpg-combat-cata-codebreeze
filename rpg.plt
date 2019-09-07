:- begin_tests(character).
:- include(rpg).

% ====== facts ======
level(adam, 1).

health(adam, 1000).
health(bea, 0).
health(charlie, 100).
health(diana, 0).

damage(diana, adam, 100).
damage(adam, charlie, 110).

heal(adam, diana, 100).


% ====== tests ======

test('adam has 1000 health') :-
          health(adam, 1000).
test('adam has level 1') :-
          level(adam, 1).
test('adam is alive') :-
          alive(adam).
test('bea is dead') :-
          dead(bea).
test('adam can be damaged') :-
          currenthealth(adam, 900).
test('diana can be healed') :-
          currenthealth(diana, 100).
test('charlie cannot take more damage than he has') :-
          currenthealth(charlie, 0).
test('charlie is dead after taking more damage than he has') :-
          dead(charlie).
:- end_tests(character).