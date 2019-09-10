angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const timemax = 1 .
time(0..timemax).
joint(1..6).
hasAngle(1,300,0).
hasAngle(2,300,0).
hasAngle(3,0,0).
hasAngle(4,60,0).
hasAngle(5,0,0).
hasAngle(6,0,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
goal(1,180).
goal(2,0).
goal(3,300).
goal(4,240).
goal(5,60).
goal(6,120).
