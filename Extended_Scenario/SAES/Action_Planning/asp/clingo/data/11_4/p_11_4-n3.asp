angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 1 .
time(0..timemax).
gripper(0).
gripper(1).
link(1..11).
joint(1..10).
free(0,0).
free(1,0).
in_centre(3,0).
hasAngle(1,0,0).
hasAngle(2,0,0).
hasAngle(3,270,0).
hasAngle(4,90,0).
hasAngle(5,270,0).
hasAngle(6,0,0).
hasAngle(7,0,0).
hasAngle(8,270,0).
hasAngle(9,0,0).
hasAngle(10,0,0).
hasAngle(11,90,0).
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
goal(1,0).
goal(2,0).
goal(3,180).
goal(4,0).
goal(5,90).
goal(6,0).
goal(7,180).
goal(8,90).
goal(9,270).
goal(10,270).
goal(11,0).