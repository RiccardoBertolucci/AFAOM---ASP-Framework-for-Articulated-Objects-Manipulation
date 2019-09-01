%fixed(1).

%-------------------------------------------------------------------------------------------------------------------------------------------
%ACTION: moves the link to central position

{linkToCentral_Grasp(L1,L2,J1,J2,G1,G2,T)}:- link(L1), link(L2), joint(J1), joint(J2), gripper(G1), gripper(G2), time(T), not in_centre(J1,T), connected(J2,L1), connected(J2,L2), free(G1,T), free(G2,T), L1<>L2, G1<>G2.

in_centre(J,T+1) :- linkToCentral_Grasp(_,_,_,J,_,_,T), T < timemax+1.
in_hand(L,T+1) :- linkToCentral_Grasp(L,_,_,_,_,_,T), T < timemax+1.
in_hand(L,T+1) :- linkToCentral_Grasp(_,L,_,_,_,_,T), T < timemax+1.
grasped(G,L,T+1) :- linkToCentral_Grasp(L,_,_,_,G,_,T), T < timemax+1.
grasped(G,L,T+1) :- linkToCentral_Grasp(_,L,_,_,_,G,T), T < timemax+1.

test(T, linkToCentral_Grasp(L1,L2,J1,J2,G1,G2,T)) :- linkToCentral_Grasp(L1,L2,J1,J2,G1,G2,T).
in_centre(J1,T+1) :- in_centre(J1,T), #count{Z : test(T,Z)} = 0, T < timemax+1.


%-------------------------------------------------------------------------------------------------------------------------------------------
%ACTION: Grasp the links we will act on (only for changing angle)

{changeAngle_release(L1,L2,J,G1,G2,A1,A2,T)} :- link(L1), link(L2), joint(J), gripper(G1), gripper(G2), angles(A1), angles(A2), in_centre(J,T), not free(G1,T), not free(G2,T), in_hand(L1,T), in_hand(L2,T), connected(J,L1), connected(J,L2), grasped(G1,L1,T), hasAngle(L1,A2,T), grasped(G2,L2,T), L1<>L2, G1<>G2.

ok(L1,L2,A,Ai,T)  :- changeAngle_release(L1,L2,_,_,_,A,Ai,T), F1=(A+granularity)\360, F2=(Ai\360), F1 = F2, A < Ai.
ok(L1,L2,A,Ai,T)  :- changeAngle_release(L1,L2,_,_,_,A,Ai,T), F1=(Ai+granularity)\360, F2=(A\360), F1 = F2, A > Ai.
ok(L1,L2,A,0,T)   :- changeAngle_release(L1,L2,_,_,_,A,Ai,T), A = 360-granularity.
ok(L1,L2,0,A,T)   :- changeAngle_release(L1,L2,_,_,_,A,Ai,T), A = 360-granularity.

:- changeAngle_release(L1,L2,_,_,_,A,Ai,T), not ok(L1,L2,A,Ai,T).

affected(L,An,Ac,T) :- angles(An),changeAngle_release(L1,L2,_,_,_,A,Ap,T), hasAngle(L,Ac,T), An = |(Ac + (A-Ap)) + 360|\360, L>L1, L1>L2.
affected(L,An,Ac,T) :- angles(An),changeAngle_release(L1,L2,_,_,_,A,Ap,T), hasAngle(L,Ac,T), An = |(Ac + (A-Ap)) + 360|\360, L<L1, L1<L2.


hasAngle(L1,A1,T+1) :- changeAngle_release(L1,L2,_,_,_,A1,_,T), T < timemax+1.


free(G,T+1) :- changeAngle_release(_,_,_,G,_,_,_,T), T < timemax+1.
free(G,T+1) :- changeAngle_release(_,_,_,_,G,_,_,T), T < timemax+1.
%-------------------------------------------------------------------------------------------------------------------------------------------
%ACTION: Grasp the links we will act on (only for changing angle) 

{grasp_changeAngle_release(L1,L2,J,A1,A2,G1,G2,T)} :- link(L1), link(L2), joint(J), angles(A1), angles(A2), gripper(G1), gripper(G2), time(T), in_centre(J,T), free(G1,T), free(G2,T), connected(J,L1), connected(J,L2), in_centre(J,T), hasAngle(L1,A2,T), L1<>L2, G1<>G2.

ok(L1,L2,A,Ai,T)  :- grasp_changeAngle_release(L1,L2,_,A,Ai,_,_,T), F1=(A+granularity)\360, F2=(Ai\360), F1 = F2, A < Ai.
ok(L1,L2,A,Ai,T)  :- grasp_changeAngle_release(L1,L2,_,A,Ai,_,_,T), F1=(Ai+granularity)\360, F2=(A\360), F1 = F2, A > Ai.
ok(L1,L2,A,0,T)   :- grasp_changeAngle_release(L1,L2,_,A,Ai,_,_,T), A = 360-granularity.
ok(L1,L2,0,A,T)   :- grasp_changeAngle_release(L1,L2,_,A,Ai,_,_,T), A = 360-granularity.

:- grasp_changeAngle_release(L1,L2,_,A,Ai,_,_,T), not ok(L1,L2,A,Ai,T).

affected(L,An,Ac,T) :- angles(An),grasp_changeAngle_release(L1,L2,_,A,Ap,_,_,T), hasAngle(L,Ac,T), An = |(Ac + (A-Ap)) + 360|\360, L>L1, L1>L2.
affected(L,An,Ac,T) :- angles(An),grasp_changeAngle_release(L1,L2,_,A,Ap,_,_,T), hasAngle(L,Ac,T), An = |(Ac + (A-Ap)) + 360|\360, L<L1, L1<L2.

hasAngle(L1,A1,T+1) :- grasp_changeAngle_release(L1,L2,_,A1,_,_,_,T), T < timemax+1.


free(G,T+1) :- grasp_changeAngle_release(_,_,_,_,_,G,_,T), T < timemax+1.
free(G,T+1) :- grasp_changeAngle_release(_,_,_,_,_,_,G,T), T < timemax+1.

%-------------------------------------------------------------------------------------------------------------------------------------------
%CONSTRAINTS: The following contraints are used to ensure that maximum one action is selected at each time istant T
	
action(T, linkToCentral_Grasp(L1,L2,J1,J2,G1,G2,T)) :- linkToCentral_Grasp(L1,L2,J1,J2,G1,G2,T).
action(T, changeAngle_release(L1,L2,J,G1,G2,A1,A2,T)) :-  changeAngle_release(L1,L2,J,G1,G2,A1,A2,T).
action(T, grasp_changeAngle_release(L1,L2,J,A1,A2,G1,G2,T)) :- grasp_changeAngle_release(L1,L2,J,A1,A2,G1,G2,T).

:- time(T), #count{Z : action(T,Z)} != 1.
%-------------------------------------------------------------------------------------------------------------------------------------------
%PROPAGATION: the following rules are used to propagate the current information to the next time istant 
free(G,T+1) :- free(G,T), not linkToCentral_Grasp(_,_,_,_,G,_,T), not linkToCentral_Grasp(_,_,_,_,_,G,T), T < timemax+1.

in_hand(L,T+1) :- in_hand(L,T), not changeAngle_release(L,_,_,_,_,_,_,T), not changeAngle_release(_,L,_,_,_,_,_,T), not grasp_changeAngle_release(L,_,_,_,_,_,_,T), not grasp_changeAngle_release(_,L,_,_,_,_,_,T), T < timemax+1.

grasped(G,L,T+1) :- grasped(G,L,T), link(L), not changeAngle_release(L,_,_,G,_,_,_,T), not changeAngle_release(_,L,_,_,G,_,_,T), not grasp_changeAngle_release(L,_,_,_,_,G,_,T), not grasp_changeAngle_release(_,L,_,_,_,_,G,T),  T < timemax+1.


hasAngle(L,A,T+1) :- affected(L,A,_,T), T < timemax+1.
hasAngle(L,A,T+1) :- hasAngle(L,A,T), not changeAngle_release(L,_,_,_,_,_,_,T), not grasp_changeAngle_release(L,_,_,_,_,_,_,T), not affected(L,_,_,T), T < timemax+1.

%-------------------------------------------------------------------------------------------------------------------------------------------
%GOAL

:- goal(L,A), not hasAngle(L,A,timemax+1).
