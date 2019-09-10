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
joint(1..5).
hasAngle(1,315,0).
hasAngle(2,135,0).
hasAngle(3,45,0).
hasAngle(4,180,0).
hasAngle(5,225,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
goal(1,270).
goal(2,270).
goal(3,135).
goal(4,315).
goal(5,45).
