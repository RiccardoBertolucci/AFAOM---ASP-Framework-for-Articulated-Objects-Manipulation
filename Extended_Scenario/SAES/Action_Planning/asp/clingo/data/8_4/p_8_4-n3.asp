angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 1 .
time(0..timemax).
gripper(0).
gripper(1).
link(1..8).
joint(1..7).
free(0,0).
free(1,0).
in_centre(3,0).
hasAngle(1,0,0).
hasAngle(2,90,0).
hasAngle(3,270,0).
hasAngle(4,90,0).
hasAngle(5,0,0).
hasAngle(6,270,0).
hasAngle(7,90,0).
hasAngle(8,180,0).
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
goal(2,90).
goal(3,180).
goal(4,90).
goal(5,0).
goal(6,270).
goal(7,90).
goal(8,270).