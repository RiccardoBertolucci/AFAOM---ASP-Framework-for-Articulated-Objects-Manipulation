angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 1 .
time(0..timemax).
joint(1..4).
hasAngle(1,180,0).
hasAngle(2,180,0).
hasAngle(3,0,0).
hasAngle(4,270,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
goal(1,90).
goal(2,180).
goal(3,180).
goal(4,0).
