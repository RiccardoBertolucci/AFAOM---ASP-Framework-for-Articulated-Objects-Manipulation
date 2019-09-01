reachedGoal(J) :- goal(J,A), hasAngle(J,A,0).
:- joint(J), not reachedGoal(J).
