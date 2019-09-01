%fixed(L):- link(L), L=1.
%fixed(1).
%-------------------------------------------------------------------------------------------------------------------------------------------
%ACTION: moves the link to central position

{move_link_to_central(L1,J1,G2,T)}:- link(L1), joint(J1), gripper(G2), time(T), connected(J1,L1), free(G2,T), not in_hand(L1,T), not in_centre(J1,T).

test(T, move_link_to_central(L1,J1,G2,T)) :- move_link_to_central(L1,J1,G2,T).

in_centre(J,T+1) :- move_link_to_central(_,J,_,T), T < timemax+1.
moved(J1,T) :- move_link_to_central(L1,J1,G2,T).
in_centre(J1,T+1) :- in_centre(J1,T), #count{Z : test(T,Z)} = 0, T < timemax+1.

%-------------------------------------------------------------------------------------------------------------------------------------------
%ACTION: Grasp the links we will act on (only for changing angle)

{take_links_to_move(L1,L2,J,G1,G2,T)} :- link(L1), link(L2), joint(J), gripper(G1), gripper(G2), in_centre(J,T), free(G1,T), free(G2,T), not in_hand(L1,T), not in_hand(L2,T), connected(J,L1), connected(J,L2), L1<>L2, G1<>G2.

in_hand(L,T+1) :- take_links_to_move(L,_,_,_,_,T), T < timemax+1.
in_hand(L,T+1) :- take_links_to_move(_,L,_,_,_,T), T < timemax+1.
grasped(G,L,T+1)  :- take_links_to_move(L,_,_,G,_,T), T < timemax+1.
grasped(G,L,T+1)  :- take_links_to_move(_,L,_,_,G,T), T < timemax+1.

%-------------------------------------------------------------------------------------------------------------------------------------------
%ACTION: Grasp the links we will act on (only for changing angle) 

{changeAngle(L1,L2,J,A1,A2,G1,G2,T)} :- link(L1), link(L2), joint(J), angles(A1), angles(A2), gripper(G1), gripper(G2), time(T), in_centre(J,T), grasped(G1,L1,T), grasped(G2,L2,T), in_hand(L1,T), in_hand(L2,T), connected(J,L1), connected(J,L2), hasAngle(L1,A2,T), L1<>L2, G1<>G2.

ok(L1,L2,A,Ai,T)  :- changeAngle(L1,L2,_,A,Ai,_,_,T), F1=(A+granularity)\360, F2=(Ai\360), F1 = F2, A < Ai.
ok(L1,L2,A,Ai,T)  :- changeAngle(L1,L2,_,A,Ai,_,_,T), F1=(Ai+granularity)\360, F2=(A\360), F1 = F2, A > Ai.
ok(L1,L2,A,0,T)   :- changeAngle(L1,L2,_,A,Ai,_,_,T), A = 360-granularity.
ok(L1,L2,0,A,T)   :- changeAngle(L1,L2,_,A,Ai,_,_,T), A = 360-granularity.

:- changeAngle(L1,L2,_,A,Ai,_,_,T), not ok(L1,L2,A,Ai,T).

affected(L,An,Ac,T) :- angles(An),changeAngle(L1,L2,J,A,Ap,_,_,T), hasAngle(L,Ac,T), An = |(Ac + (A-Ap)) + 360|\360, L>L1, L1>L2.
affected(L,An,Ac,T) :- angles(An),changeAngle(L1,L2,J,A,Ap,_,_,T), hasAngle(L,Ac,T), An = |(Ac + (A-Ap)) + 360|\360, L<L1, L1<L2.

has_angle(L1,A1,T+1) :- changeAngle(L1,_,_,A1,_,_,_,T), T < timemax+1.


%-------------------------------------------------------------------------------------------------------------------------------------------
%ACTION: Grasp the links we will act on (only for changing angle)

{release_links(L1,L2,J,G1,G2,T)} :- link(L1), link(L2), joint(J), gripper(G1), gripper(G2), time(T), grasped(G2,L2,T), grasped(G1,L1,T), in_hand(L1,T), in_hand(L2,T), connected(J,L1), connected(J,L2), L1<>L2, G1<>G2.

free(G,T) :- release_links(_,_,_,_,G,T), T < timemax+1.
free(G,T) :- release_links(_,_,_,G,_,T), T < timemax+1.

%-------------------------------------------------------------------------------------------------------------------------------------------
%CONSTRAINTS: The following contraints are used to ensure that maximum one action is selected at each time istant T
	
action(T, move_link_to_central(L1,J1,G2,T)) :- move_link_to_central(L1,J1,G2,T).
action(T, take_links_to_move(L1,L2,J,G1,G2,T)) :-  take_links_to_move(L1,L2,J,G1,G2,T).
action(T, changeAngle(L1,L2,J,A1,A2,G1,G2,T)) :- changeAngle(L1,L2,J,A1,A2,G1,G2,T).
action(T, release_links(L1,L2,J,G1,G2,T)) :- release_links(L1,L2,J,G1,G2,T).

:- time(T), #count{Z : action(T,Z)} != 1.
%-------------------------------------------------------------------------------------------------------------------------------------------
%PROPAGATION: the following rules are used to propagate the current information to the next time istant 

in_hand(L,T+1) :- in_hand(L,T), not release_links(L,_,_,_,_,T), not release_links(_,L,_,_,_,T), T < timemax+1. 
free(G,T+1) :- free(G,T), not take_links_to_move(_,_,_,_,G,T), not take_links_to_move(_,_,_,G,_,T), T < timemax+1.
grasped(G,L,T+1)  :- grasped(G,L,T), not release_links(L,_,_,G,_,T) , not release_links(_,L,_,_,G,T), T < timemax+1.

hasAngle(L,A,T+1) :- changeAngle(L,_,_,A,_,_,_,T), T < timemax+1.
hasAngle(L,A,T+1) :- affected(L,A,_,T), T < timemax+1.
hasAngle(L,A,T+1) :- hasAngle(L,A,T), not changeAngle(L,_,_,_,_,_,_,T), not affected(L,_,_,T), T < timemax+1.
%-------------------------------------------------------------------------------------------------------------------------------------------
%GOAL

:- goal(L,A), not hasAngle(L,A,timemax+1).
