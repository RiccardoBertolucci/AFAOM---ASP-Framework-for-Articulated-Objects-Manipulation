angles(0).
angles(40).
angles(80).
angles(120).
angles(160).
angles(200).
angles(240).
angles(280).
angles(320).
#const granularity = 40 .
#const timemax = 13 .
time(0..timemax).
joint(1..8).
hasAngle(1,0,0).
hasAngle(2,280,0).
hasAngle(3,320,0).
hasAngle(4,80,0).
hasAngle(5,320,0).
hasAngle(6,200,0).
hasAngle(7,160,0).
hasAngle(8,160,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
goal(1,0).
goal(2,320).
goal(3,120).
goal(4,120).
goal(5,320).
goal(6,240).
goal(7,160).
goal(8,40).
