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
#const timemax = 19 .
time(0..timemax).
gripper(0).
gripper(1).
link(1..6).
joint(1..5).
free(0,0).
free(1,0).
in_centre(3,0).
hasAngle(1,0,0).
hasAngle(2,210,0).
hasAngle(3,180,0).
hasAngle(4,270,0).
hasAngle(5,0,0).
hasAngle(6,300,0).
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
goal(1,0).
goal(2,150).
goal(3,120).
goal(4,330).
goal(5,270).
goal(6,60).