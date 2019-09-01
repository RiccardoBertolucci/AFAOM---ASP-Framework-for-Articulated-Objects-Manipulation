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
link(1..14).
joint(1..13).
free(0,0).
free(1,0).
in_centre(3,0).
hasAngle(1,0,0).
hasAngle(2,180,0).
hasAngle(3,150,0).
hasAngle(4,210,0).
hasAngle(5,60,0).
hasAngle(6,150,0).
hasAngle(7,210,0).
hasAngle(8,60,0).
hasAngle(9,30,0).
hasAngle(10,240,0).
hasAngle(11,120,0).
hasAngle(12,30,0).
hasAngle(13,330,0).
hasAngle(14,60,0).
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
connected(13,13).
connected(13,14).
goal(1,0).
goal(2,60).
goal(3,270).
goal(4,150).
goal(5,210).
goal(6,90).
goal(7,210).
goal(8,30).
goal(9,300).
goal(10,0).
goal(11,270).
goal(12,150).
goal(13,270).
goal(14,150).