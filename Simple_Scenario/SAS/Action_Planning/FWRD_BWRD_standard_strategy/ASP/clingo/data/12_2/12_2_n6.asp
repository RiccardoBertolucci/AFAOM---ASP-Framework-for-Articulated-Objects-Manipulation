angles(0).
angles(180).
#const granularity = 180 .
#const timemax = 1 .
time(0..timemax).
joint(1..12).
hasAngle(1,180,0).
hasAngle(2,0,0).
hasAngle(3,0,0).
hasAngle(4,0,0).
hasAngle(5,180,0).
hasAngle(6,0,0).
hasAngle(7,180,0).
hasAngle(8,0,0).
hasAngle(9,0,0).
hasAngle(10,0,0).
hasAngle(11,0,0).
hasAngle(12,0,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
isLinked(9,10).
isLinked(10,11).
isLinked(11,12).
goal(1,0).
goal(2,180).
goal(3,180).
goal(4,0).
goal(5,0).
goal(6,180).
goal(7,180).
goal(8,0).
goal(9,180).
goal(10,180).
goal(11,180).
goal(12,0).