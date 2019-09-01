angles(0).
angles(45).
angles(90).
angles(135).
angles(180).
angles(225).
angles(270).
angles(315).
#const granularity = 45 .
#const timemax = 1 .
time(0..timemax).
joint(1..4).
hasAngle(1,45,0).
hasAngle(2,225,0).
hasAngle(3,225,0).
hasAngle(4,225,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
goal(1,135).
goal(2,180).
goal(3,270).
goal(4,90).
