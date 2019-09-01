angles(0).
angles(180).
#const granularity = 180 .
#const timemax = 1 .
time(0..timemax).
joint(1..7).
hasAngle(1,0,0).
hasAngle(2,0,0).
hasAngle(3,0,0).
hasAngle(4,0,0).
hasAngle(5,0,0).
hasAngle(6,180,0).
hasAngle(7,180,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
goal(1,0).
goal(2,0).
goal(3,0).
goal(4,0).
goal(5,0).
goal(6,180).
goal(7,0).
