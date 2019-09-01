angles(0).
angles(90).
angles(180).
angles(270).
#const granularity = 90 .
#const timemax = 1 .
time(0..timemax).
gripper(0).
gripper(1).
link(1..4).
joint(1..3).
free(0,0).
free(1,0).
in_centre(3,0).
hasAngle(1,0,0).
hasAngle(2,0,0).
hasAngle(3,180,0).
hasAngle(4,270,0).
connected(1,1).
connected(1,2).
connected(2,2).
connected(2,3).
connected(3,3).
connected(3,4).
goal(1,0).
goal(2,90).
goal(3,90).
goal(4,180).