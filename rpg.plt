:- begin_tests(character).
:- include(rpg).

%facts
level(adam, 1).
health(adam, 1000).
health(diana, 0).
damage(diana, adam, 100).

%tests
test('adam has 1000 health') :-
          health(adam, 1000).
test('adam has level 1') :-
          level(adam, 1).
test('adam is alive') :-
          alive(adam).
test('diana is dead') :-
          dead(diana).
test('adam can be damaged') :-
          currenthealth(adam, 900).
          
:- end_tests(character).