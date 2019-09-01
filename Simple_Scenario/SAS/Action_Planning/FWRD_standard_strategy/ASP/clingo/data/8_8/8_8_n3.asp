angles(0).
angles(45).
angles(90).
angles(135).
angles(180).
angles(225).
angles(270).
angles(315).
#const granularity = 45 .
#const timemax = 14 .
time(0..timemax).
joint(1..8).
hasAngle(1,0,0).
hasAngle(2,90,0).
hasAngle(3,270,0).
hasAngle(4,90,0).
hasAngle(5,315,0).
hasAngle(6,135,0).
hasAngle(7,45,0).
hasAngle(8,270,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
goal(1,180).
goal(2,315).
goal(3,90).
goal(4,90).
goal(5,0).
goal(6,135).
goal(7,135).
goal(8,45).