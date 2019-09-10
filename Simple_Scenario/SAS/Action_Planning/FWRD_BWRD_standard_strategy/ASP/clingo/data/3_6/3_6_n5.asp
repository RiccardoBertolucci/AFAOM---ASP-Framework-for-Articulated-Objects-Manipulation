angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const timemax = 1 .
time(0..timemax).
joint(1..3).
hasAngle(1,300,0).
hasAngle(2,60,0).
hasAngle(3,180,0).
isLinked(1,2).
isLinked(2,3).
goal(1,180).
goal(2,60).
goal(3,240).
