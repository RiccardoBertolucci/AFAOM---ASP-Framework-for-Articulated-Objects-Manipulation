angles(0).
angles(180).
#const granularity = 180 .
#const timemax = 1 .
time(0..timemax).
joint(1..4).
hasAngle(1,0,0).
hasAngle(2,0,0).
hasAngle(3,180,0).
hasAngle(4,0,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
goal(1,180).
goal(2,0).
goal(3,180).
goal(4,0).
