angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const timemax = 12 .
time(0..timemax).
joint(1..11).
hasAngle(1,300,0).
hasAngle(2,60,0).
hasAngle(3,240,0).
hasAngle(4,60,0).
hasAngle(5,240,0).
hasAngle(6,0,0).
hasAngle(7,240,0).
hasAngle(8,60,0).
hasAngle(9,300,0).
hasAngle(10,120,0).
hasAngle(11,0,0).
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
goal(1,120).
goal(2,300).
goal(3,60).
goal(4,60).
goal(5,60).
goal(6,180).
goal(7,180).
goal(8,180).
goal(9,240).
goal(10,0).
goal(11,60).
