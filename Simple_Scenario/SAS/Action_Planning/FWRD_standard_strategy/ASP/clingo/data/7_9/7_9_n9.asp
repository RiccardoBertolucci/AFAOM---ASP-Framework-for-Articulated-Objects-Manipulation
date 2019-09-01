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
#const timemax = 15 .
time(0..timemax).
joint(1..7).
hasAngle(1,320,0).
hasAngle(2,320,0).
hasAngle(3,40,0).
hasAngle(4,80,0).
hasAngle(5,0,0).
hasAngle(6,200,0).
hasAngle(7,120,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
isLinked(4,5).
isLinked(5,6).
isLinked(6,7).
goal(1,120).
goal(2,280).
goal(3,40).
goal(4,160).
goal(5,240).
goal(6,40).
goal(7,80).