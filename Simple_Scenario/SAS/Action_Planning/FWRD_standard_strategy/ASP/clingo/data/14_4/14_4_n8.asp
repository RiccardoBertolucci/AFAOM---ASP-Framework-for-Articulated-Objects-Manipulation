angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 12 .
time(0..timemax).
joint(1..14).
hasAngle(1,0,0).
hasAngle(2,180,0).
hasAngle(3,180,0).
hasAngle(4,270,0).
hasAngle(5,180,0).
hasAngle(6,90,0).
hasAngle(7,270,0).
hasAngle(8,0,0).
hasAngle(9,90,0).
hasAngle(10,0,0).
hasAngle(11,270,0).
hasAngle(12,270,0).
hasAngle(13,180,0).
hasAngle(14,180,0).
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
isLinked(12,13).
isLinked(13,14).
goal(1,270).
goal(2,270).
goal(3,90).
goal(4,0).
goal(5,90).
goal(6,180).
goal(7,180).
goal(8,0).
goal(9,270).
goal(10,180).
goal(11,270).
goal(12,180).
goal(13,0).
goal(14,270).