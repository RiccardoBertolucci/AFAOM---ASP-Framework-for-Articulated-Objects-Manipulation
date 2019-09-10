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
hasAngle(1,0,0).
hasAngle(2,240,0).
hasAngle(3,180,0).
hasAngle(4,0,0).
hasAngle(5,120,0).
hasAngle(6,300,0).
hasAngle(7,120,0).
hasAngle(8,120,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
goal(1,300).
goal(2,0).
goal(3,120).
goal(4,0).
goal(5,0).
goal(6,120).
goal(7,60).
goal(8,60).