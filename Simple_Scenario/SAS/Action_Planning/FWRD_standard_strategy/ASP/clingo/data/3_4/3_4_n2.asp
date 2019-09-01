angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 1 .
time(0..timemax).
joint(1..3).
hasAngle(1,180,0).
hasAngle(2,270,0).
hasAngle(3,0,0).
isLinked(1,2).
isLinked(2,3).
goal(1,270).
goal(2,0).
goal(3,90).
