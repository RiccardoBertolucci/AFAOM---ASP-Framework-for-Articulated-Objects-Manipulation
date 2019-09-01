angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 1 .
time(0..timemax).
joint(1..5).
hasAngle(1,270,0).
hasAngle(2,90,0).
hasAngle(3,90,0).
hasAngle(4,90,0).
hasAngle(5,180,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
goal(1,90).
goal(2,180).
goal(3,90).
goal(4,180).
goal(5,0).