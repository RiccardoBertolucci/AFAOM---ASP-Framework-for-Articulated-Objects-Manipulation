angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const timemax = 1 .
time(0..timemax).
joint(1..5).
hasAngle(1,180,0).
hasAngle(2,60,0).
hasAngle(3,120,0).
hasAngle(4,0,0).
hasAngle(5,180,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
goal(1,60).
goal(2,60).
goal(3,180).
goal(4,240).
goal(5,120).
