angles(0).
angles(30).
angles(60).
angles(90).
angles(120).
angles(150).
angles(180).
angles(210).
angles(240).
angles(270).
angles(300).
angles(330).
#const granularity = 30 .
#const timemax = 1 .
time(0..timemax).
joint(1..4).
hasAngle(1,150,0).
hasAngle(2,330,0).
hasAngle(3,60,0).
hasAngle(4,210,0).
isLinked(1,2).
isLinked(2,3).
isLinked(3,4).
goal(1,180).
goal(2,60).
goal(3,300).
goal(4,210).
