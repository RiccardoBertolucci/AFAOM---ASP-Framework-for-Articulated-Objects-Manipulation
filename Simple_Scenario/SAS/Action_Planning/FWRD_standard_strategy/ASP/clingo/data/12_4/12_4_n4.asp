angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 12 .
time(0..timemax).
joint(1..12).
hasAngle(1,0,0).
hasAngle(2,0,0).
hasAngle(3,0,0).
hasAngle(4,0,0).
hasAngle(5,270,0).
hasAngle(6,0,0).
hasAngle(7,270,0).
hasAngle(8,180,0).
hasAngle(9,90,0).
hasAngle(10,180,0).
hasAngle(11,90,0).
hasAngle(12,180,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
isLinked(9,10).
isLinked(10,11).
isLinked(11,12).
goal(1,180).
goal(2,180).
goal(3,0).
goal(4,270).
goal(5,90).
goal(6,270).
goal(7,0).
goal(8,180).
goal(9,90).
goal(10,0).
goal(11,90).
goal(12,270).
