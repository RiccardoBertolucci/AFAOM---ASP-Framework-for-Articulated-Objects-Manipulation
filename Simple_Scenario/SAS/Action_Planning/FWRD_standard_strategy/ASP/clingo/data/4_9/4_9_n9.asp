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
#const timemax = 1 .
time(0..timemax).
joint(1..4).
hasAngle(1,40,0).
hasAngle(2,0,0).
hasAngle(3,40,0).
hasAngle(4,200,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
goal(1,320).
goal(2,0).
goal(3,80).
goal(4,0).
