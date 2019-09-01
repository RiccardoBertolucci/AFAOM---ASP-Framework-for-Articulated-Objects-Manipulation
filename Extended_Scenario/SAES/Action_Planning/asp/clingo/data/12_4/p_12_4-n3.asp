angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 1 .
time(0..timemax).
gripper(0).
gripper(1).
link(1..12).
joint(1..11).
free(0,0).
free(1,0).
in_centre(3,0).
hasAngle(1,0,0).
hasAngle(2,180,0).
hasAngle(3,90,0).
hasAngle(4,270,0).
hasAngle(5,90,0).
hasAngle(6,90,0).
hasAngle(7,90,0).
hasAngle(8,0,0).
hasAngle(9,180,0).
hasAngle(10,180,0).
hasAngle(11,270,0).
hasAngle(12,270,0).
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
goal(1,0).
goal(2,180).
goal(3,180).
goal(4,180).
goal(5,180).
goal(6,180).
goal(7,270).
goal(8,180).
goal(9,90).
goal(10,0).
goal(11,90).
goal(12,180).