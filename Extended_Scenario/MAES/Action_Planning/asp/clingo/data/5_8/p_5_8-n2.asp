angles(0).
angles(45).
angles(90).
angles(135).
angles(180).
angles(225).
angles(270).
angles(315).
#const granularity = 45 .
#const timemax = 12 .
time(0..timemax).
gripper(0).
gripper(1).
link(1..5).
joint(1..4).
free(0,0).
free(1,0).
in_centre(3,0).
hasAngle(1,225,0).
hasAngle(2,225,0).
hasAngle(3,270,0).
hasAngle(4,135,0).
hasAngle(5,135,0).
connected(1,1).
connected(1,2).
connected(2,2).
connected(2,3).
connected(3,3).
connected(3,4).
connected(4,4).
connected(4,5).
goal(1,45).
goal(2,225).
goal(3,90).
goal(4,225).
goal(5,90).
