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
joint(1..6).
hasAngle(1,270,0).
hasAngle(2,135,0).
hasAngle(3,225,0).
hasAngle(4,180,0).
hasAngle(5,225,0).
hasAngle(6,270,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
goal(1,90).
goal(2,45).
goal(3,270).
goal(4,270).
goal(5,135).
goal(6,225).
