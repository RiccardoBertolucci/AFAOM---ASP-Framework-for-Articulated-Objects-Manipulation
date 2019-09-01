angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 1 .
time(0..timemax).
joint(1..6).
hasAngle(1,180,0).
hasAngle(2,0,0).
hasAngle(3,90,0).
hasAngle(4,0,0).
hasAngle(5,0,0).
hasAngle(6,180,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
goal(1,180).
goal(2,90).
goal(3,0).
goal(4,180).
goal(5,270).
goal(6,0).
