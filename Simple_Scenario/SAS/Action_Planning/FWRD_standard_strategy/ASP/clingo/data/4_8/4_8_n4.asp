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
hasAngle(1,270,0).
hasAngle(2,90,0).
hasAngle(3,90,0).
hasAngle(4,45,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
goal(1,225).
goal(2,90).
goal(3,270).
goal(4,0).
