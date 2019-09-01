angles(0).
angles(60).
angles(120).
angles(180).
angles(240).
angles(300).
#const granularity = 60 .
#const timemax = 1 .
time(0..timemax).
gripper(0).
gripper(1).
link(1..10).
joint(1..9).
free(0,0).
free(1,0).
in_centre(3,0).
hasAngle(1,0,0).
hasAngle(2,120,0).
hasAngle(3,0,0).
hasAngle(4,240,0).
hasAngle(5,60,0).
hasAngle(6,0,0).
hasAngle(7,180,0).
hasAngle(8,300,0).
hasAngle(9,240,0).
hasAngle(10,120,0).
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
goal(1,0).
goal(2,120).
goal(3,240).
goal(4,300).
goal(5,300).
goal(6,120).
goal(7,300).
goal(8,180).
goal(9,60).
goal(10,60).