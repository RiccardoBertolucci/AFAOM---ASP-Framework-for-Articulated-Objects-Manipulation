angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const timemax = 1 .
time(0..timemax).
joint(1..4).
hasAngle(1,180,0).
hasAngle(2,240,0).
hasAngle(3,0,0).
hasAngle(4,60,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
goal(1,180).
goal(2,300).
goal(3,240).
goal(4,120).
