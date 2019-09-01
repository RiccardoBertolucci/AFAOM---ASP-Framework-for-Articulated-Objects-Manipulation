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
#const timemax = 14 .
time(0..timemax).
joint(1..8).
hasAngle(1,40,0).
hasAngle(2,160,0).
hasAngle(3,200,0).
hasAngle(4,160,0).
hasAngle(5,200,0).
hasAngle(6,120,0).
hasAngle(7,280,0).
hasAngle(8,160,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
isLinked(7,8).
goal(1,160).
goal(2,120).
goal(3,160).
goal(4,200).
goal(5,200).
goal(6,280).
goal(7,160).
goal(8,240).
