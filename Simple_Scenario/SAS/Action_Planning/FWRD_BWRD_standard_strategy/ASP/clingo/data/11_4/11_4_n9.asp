angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 12 .
time(0..timemax).
joint(1..11).
hasAngle(1,0,0).
hasAngle(2,270,0).
hasAngle(3,270,0).
hasAngle(4,180,0).
hasAngle(5,180,0).
hasAngle(6,0,0).
hasAngle(7,0,0).
hasAngle(8,0,0).
hasAngle(9,180,0).
hasAngle(10,0,0).
hasAngle(11,90,0).
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
goal(1,180).
goal(2,90).
goal(3,0).
goal(4,180).
goal(5,0).
goal(6,90).
goal(7,180).
goal(8,90).
goal(9,0).
goal(10,0).
goal(11,90).
