angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 1 .
time(0..timemax).
gripper(0).
gripper(1).
link(1..7).
joint(1..6).
free(0,0).
free(1,0).
in_centre(3,0).
hasAngle(1,0,0).
hasAngle(2,270,0).
hasAngle(3,90,0).
hasAngle(4,0,0).
hasAngle(5,0,0).
hasAngle(6,90,0).
hasAngle(7,0,0).
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
goal(1,0).
goal(2,270).
goal(3,0).
goal(4,0).
goal(5,270).
goal(6,90).
goal(7,270).