clingo version 5.2.2
Reading from ...5/ASP/ASP/clingo/data/4_4/p_4_4-n2.asp ...
Solving...
Answer: 1
free(0,0) free(1,0) connected(1,1) connected(1,2) connected(2,2) connected(2,3) connected(3,3) connected(3,4) time(0) time(1) time(2) time(3) time(4) time(5) gripper(0) gripper(1) joint(1) joint(2) joint(3) link(1) link(2) link(3) link(4) in_centre(3,0) hasAngle(1,0,0) hasAngle(2,0,0) hasAngle(3,270,0) hasAngle(4,270,0) angles(0) angles(90) angles(180) angles(270) goal(1,0) goal(2,0) goal(3,90) goal(4,180) hasAngle(4,270,1) hasAngle(3,270,1) hasAngle(2,0,1) hasAngle(1,0,1) linkToCentral_Grasp(2,3,2,2,0,1,0) free(0,2) free(1,2) in_centre(2,1) hasAngle(3,270,2) hasAngle(4,270,2) in_hand(3,1) in_hand(2,1) test(0,linkToCentral_Grasp(2,3,2,2,0,1,0)) grasped(0,2,1) grasped(1,3,1) in_centre(2,2) linkToCentral_Grasp(3,4,1,3,1,0,2) hasAngle(4,270,3) hasAngle(3,270,3) changeAngle_release(2,3,2,0,1,90,0,1) hasAngle(2,90,2) hasAngle(1,90,2) free(0,4) free(1,4) in_centre(3,3) in_hand(4,3) in_hand(3,3) test(2,linkToCentral_Grasp(3,4,1,3,1,0,2)) grasped(0,4,3) grasped(1,3,3) hasAngle(1,0,4) hasAngle(2,0,4) hasAngle(4,270,4) hasAngle(2,90,3) hasAngle(1,90,3) in_centre(3,4) linkToCentral_Grasp(2,3,1,2,0,1,4) affected(1,90,0,1) hasAngle(4,270,5) hasAngle(2,0,5) hasAngle(1,0,5) changeAngle_release(3,4,3,1,0,180,270,3) hasAngle(3,180,4) free(0,6) free(1,6) in_centre(2,5) hasAngle(1,0,6) hasAngle(2,0,6) in_hand(3,5) in_hand(2,5) test(4,linkToCentral_Grasp(2,3,1,2,0,1,4)) grasped(0,2,5) grasped(1,3,5) hasAngle(3,180,5) affected(1,0,90,3) affected(2,0,90,3) in_centre(2,6) hasAngle(3,90,6) hasAngle(4,180,6) changeAngle_release(3,2,2,1,0,90,180,5) affected(4,180,270,5) ok(3,4,180,270,3) ok(3,2,90,180,5) ok(2,3,90,0,1) action(0,linkToCentral_Grasp(2,3,2,2,0,1,0)) action(2,linkToCentral_Grasp(3,4,1,3,1,0,2)) action(4,linkToCentral_Grasp(2,3,1,2,0,1,4)) action(1,changeAngle_release(2,3,2,0,1,90,0,1)) action(3,changeAngle_release(3,4,3,1,0,180,270,3)) action(5,changeAngle_release(3,2,2,1,0,90,180,5))
SATISFIABLE

Models       : 1+
Calls        : 1
Time         : 0.217s (Solving: 0.15s 1st Model: 0.15s Unsat: 0.00s)
CPU Time     : 0.217s
