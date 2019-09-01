joint(0).
hasAngle(0,0,0).
isLinked(0,1).
isLinked(J1,J2) :- isLinked(J2,J1).

1<={maxspan(X): time(X), X>0}<=1.

{changeAngleF(J1,J2,A,Ai,T) : joint(J1), joint(J2), J1 > J2, angles(A), hasAngle(J1,Ai,T), A <> Ai, isLinked(J1,J2);changeAngleD(J1,J2,A,Ai,T): joint(J1), joint(J2), J1 < J2, angles(A), hasAngle(J1,Ai,T), A <> Ai, isLinked(J1,J2)} <=1 :- time(T), T < timemax, T > 0.

:- changeAngleF(J1,_,A,Ai,T), J1 = 0.
:- changeAngleD(J1,_,A,Ai,T), J1 = 0.

ok(J1,J2,A,Ai,T)  :- changeAngleF(J1,J2,A,Ai,T), F1=(A+granularity)\360, F2=(Ai\360), F1 = F2, A < Ai.
ok(J1,J2,A,Ai,T)  :- changeAngleF(J1,J2,A,Ai,T), F1=(Ai+granularity)\360, F2=(A\360), F1 = F2, A > Ai.
ok(J1,J2,A,0,T) :- changeAngleF(J1,J2,A,0,T), A = 360-granularity.
ok(J1,J2,0,A,T) :- changeAngleF(J1,J2,0,A,T), A = 360-granularity.

:- changeAngleF(J1,J2,A,Ai,T), not ok(J1,J2,A,Ai,T).


ok(J1,J2,A,Ai,T)  :- changeAngleD(J1,J2,A,Ai,T), F1=(A+granularity)\360, F2=(Ai\360), F1 = F2, A < Ai.
ok(J1,J2,A,Ai,T)  :- changeAngleD(J1,J2,A,Ai,T), F1=(Ai+granularity)\360, F2=(A\360), F1 = F2, A > Ai.
ok(J1,J2,A,0,T) :- changeAngleD(J1,J2,A,0,T), A = 360-granularity.
ok(J1,J2,0,A,T) :- changeAngleD(J1,J2,0,A,T), A = 360-granularity.

:- changeAngleD(J1,J2,A,Ai,T), not ok(J1,J2,A,Ai,T).


affectedF(J1,An,Ac,T) :- changeAngleF(J2,_,A,Ap,T), J1>J2, J1 <> 0, hasAngle(J1,Ac,T), angles(An), An = |(Ac + (A-Ap)) + 360|\360, time(T).

affectedD(J1,An,Ac,T) :- changeAngleD(J2,_,A,Ap,T), J1<J2, J1 <> 0, hasAngle(J1,Ac,T), angles(An), An = |(Ac + (A-Ap)) + 360|\360, time(T).

hasAngle(J1,A,T+1) :- changeAngleF(J1,_,A,_,T).
hasAngle(J1,A,T+1) :- affectedF(J1,A,_,T).
hasAngle(J1,A,T+1) :- changeAngleD(J1,_,A,_,T).
hasAngle(J1,A,T+1) :- affectedD(J1,A,_,T).
hasAngle(J1,A,T+1) :- hasAngle(J1,A,T), not changeAngleF(J1,_,_,_,T), not affectedF(J1,_,_,T), not changeAngleD(J1,_,_,_,T), not affectedD(J1,_,_,T), T <= timemax.

#heuristic maxspan(X). [timemax-X@1,true]


:- goal(J,A), not hasAngle(J,A,timemax).
