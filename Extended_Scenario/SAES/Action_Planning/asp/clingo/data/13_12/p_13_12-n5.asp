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
gripper(0).
gripper(1).
link(1..13).
joint(1..12).
free(0,0).
free(1,0).
in_centre(3,0).
hasAngle(1,0,0).
hasAngle(2,180,0).
hasAngle(3,0,0).
hasAngle(4,30,0).
hasAngle(5,120,0).
hasAngle(6,210,0).
hasAngle(7,90,0).
hasAngle(8,300,0).
hasAngle(9,30,0).
hasAngle(10,240,0).
hasAngle(11,180,0).
hasAngle(12,180,0).
hasAngle(13,270,0).
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
connected(8,8).
connected(8,9).
connected(9,9).
connected(9,10).
connected(10,10).
connected(10,11).
connected(11,11).
connected(11,12).
connected(12,12).
connected(12,13).
goal(1,0).
goal(2,60).
goal(3,300).
goal(4,330).
goal(5,60).
goal(6,30).
goal(7,180).
goal(8,150).
goal(9,60).
goal(10,90).
goal(11,180).
goal(12,0).
goal(13,60).