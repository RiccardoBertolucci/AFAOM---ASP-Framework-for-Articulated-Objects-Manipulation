angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 13 .
time(0..timemax).
joint(1..10).
hasAngle(1,90,0).
hasAngle(2,0,0).
hasAngle(3,180,0).
hasAngle(4,0,0).
hasAngle(5,0,0).
hasAngle(6,270,0).
hasAngle(7,180,0).
hasAngle(8,180,0).
hasAngle(9,90,0).
hasAngle(10,90,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
isLinked(8,9).
isLinked(9,10).
goal(1,0).
goal(2,90).
goal(3,90).
goal(4,270).
goal(5,90).
goal(6,180).
goal(7,270).
goal(8,270).
goal(9,0).
goal(10,0).
