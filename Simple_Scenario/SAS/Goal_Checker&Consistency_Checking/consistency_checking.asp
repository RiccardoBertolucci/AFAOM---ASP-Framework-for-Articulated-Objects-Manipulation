:- isLinked(J1,J2), not joint(J1).
:- isLinked(J1,J2), not joint(J2).
:- isLinked(J,J).
:- hasAngle(J,A,T), not joint(J).
:- hasAngle(J,A,T), not angle(A).
:- hasAngle(J,A,T), not time(T).
:- goal(J,A), not joint(J).
:- goal(J,A), not angle(A).

moreThanOneGoal(J) :- joint(J), \#count\{A:goal(J,A)\}>1.

:- joint(J), not moreThanOneGoal(J).

oneStartingAngle(J) :- joint(J), \#count\{A:hasAngle(J,A,0)\}=1.

:- joint(J), not oneStartingAngle(J).
:- not time(0).
:- not angle(0).

possibleAngle(0).
possibleAngle(X) :- possibleAngle(Y), X=Y+granularity, X<360.
:- not angle(X), possibleAngle(X).
:- angle(X), not possibleAngle(X).
