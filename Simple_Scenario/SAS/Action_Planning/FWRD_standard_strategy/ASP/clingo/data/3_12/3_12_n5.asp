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
joint(1..3).
hasAngle(1,30,0).
hasAngle(2,270,0).
hasAngle(3,30,0).
isLinked(1,2).
isLinked(2,3).
goal(1,30).
goal(2,90).
goal(3,60).
