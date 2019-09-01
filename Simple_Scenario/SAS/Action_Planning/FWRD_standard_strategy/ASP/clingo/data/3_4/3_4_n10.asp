angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 1 .
time(0..timemax).
joint(1..3).
hasAngle(1,90,0).
hasAngle(2,90,0).
hasAngle(3,90,0).
isLinked(1,2).
isLinked(2,3).
goal(1,180).
goal(2,0).
goal(3,0).
