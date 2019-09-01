angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const timemax = 13 .
time(0..timemax).
joint(1..8).
hasAngle(1,180,0).
hasAngle(2,300,0).
hasAngle(3,180,0).
hasAngle(4,120,0).
hasAngle(5,240,0).
hasAngle(6,240,0).
hasAngle(7,300,0).
hasAngle(8,300,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
goal(1,240).
goal(2,120).
goal(3,0).
goal(4,60).
goal(5,300).
goal(6,180).
goal(7,60).
goal(8,0).
