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
#const timemax = 17 .
time(0..timemax).
gripper(0).
gripper(1).
link(1..8).
joint(1..7).
free(0,0).
free(1,0).
in_centre(3,0).
hasAngle(1,0,0).
hasAngle(2,120,0).
hasAngle(3,90,0).
hasAngle(4,150,0).
hasAngle(5,90,0).
hasAngle(6,300,0).
hasAngle(7,60,0).
hasAngle(8,300,0).
connected(1,1).
connected(1,2).
connected(2,2).
connected(2,3).
connected(3,3).
connected(3,4).
connected(4,4).
connected(4,5).
connected(5,5).
connected(5,6).
connected(6,6).
connected(6,7).
connected(7,7).
connected(7,8).
goal(1,0).
goal(2,330).
goal(3,60).
goal(4,30).
goal(5,150).
goal(6,60).
goal(7,90).
goal(8,60).