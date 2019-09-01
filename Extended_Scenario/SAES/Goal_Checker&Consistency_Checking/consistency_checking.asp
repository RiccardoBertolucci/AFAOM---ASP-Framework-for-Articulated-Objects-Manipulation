:- isLinked(J1,J2), no:- connected(J,L), not joint(J1).
:- connected(J,L), not link(L).
:- connected(J,J).
:- connected(L,L).
:- connected(L,J).
:- in_centre(J,T), not joint(J).
:- in_centre(J,T), not time(T).
:- free(G,T), not gripper(G).
:- free(G,T), not time(T).
:- hasAngle(L,A,T), not link(L).
:- hasAngle(L,A,T), not angle(A).
:- hasAngle(L,A,T), not time(T).
:- goal(L,A), not joint(L).
:- goal(L,A), not angle(A).

moreThanOneGoal(L) :- joint(L), \#count\{A:goal(L,A)\}>1.

:- link(L), not moreThanOneGoal(L).

oneStartingAngle(L) :- link(L), \#count\{A:hasAngle(L,A,0)\}=1.

:- link(L), not oneStartingAngle(L).
:- not time(0).
:- not angle(0).

possibleAngle(0).
possibleAngle(X) :- possibleAngle(Y), X=Y+granularity, X<360.
:- not angle(X), possibleAngle(X).
:- angle(X), not possibleAngle(X).

