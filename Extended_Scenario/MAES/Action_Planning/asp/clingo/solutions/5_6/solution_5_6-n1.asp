clingo version 5.2.2
Reading from ...5/ASP/ASP/clingo/data/5_6/p_5_6-n1.asp ...
Solving...
Answer: 1
free(0,0) free(1,0) connected(1,1) connected(1,2) connected(2,2) connected(2,3) connected(3,3) connected(3,4) connected(4,4) connected(4,5) time(0) time(1) time(2) time(3) time(4) time(5) time(6) time(7) time(8) time(9) time(10) time(11) gripper(0) gripper(1) joint(1) joint(2) joint(3) joint(4) link(1) link(2) link(3) link(4) link(5) in_centre(3,0) hasAngle(1,0,0) hasAngle(2,120,0) hasAngle(3,240,0) hasAngle(4,300,0) hasAngle(5,240,0) angles(0) angles(60) angles(120) angles(180) angles(240) angles(300) goal(1,0) goal(2,0) goal(3,240) goal(4,0) goal(5,240) hasAngle(5,240,1) hasAngle(4,300,1) hasAngle(3,240,1) hasAngle(2,120,1) hasAngle(1,0,1) linkToCentral_Grasp(1,2,1,1,1,0,0) free(0,2) free(1,2) in_centre(1,1) hasAngle(1,0,2) in_hand(2,1) in_hand(1,1) test(0,linkToCentral_Grasp(1,2,1,1,1,0,0)) grasped(0,2,1) grasped(1,1,1) in_centre(1,2) linkToCentral_Grasp(2,1,3,1,1,0,2) hasAngle(1,0,3) changeAngle_release(2,1,1,0,1,60,120,1) hasAngle(3,180,2) hasAngle(5,180,2) hasAngle(4,240,2) hasAngle(2,60,2) free(0,4) free(1,4) in_centre(1,3) in_hand(2,3) in_hand(1,3) test(2,linkToCentral_Grasp(2,1,3,1,1,0,2)) grasped(0,1,3) grasped(1,2,3) hasAngle(1,0,4) hasAngle(3,180,3) hasAngle(5,180,3) hasAngle(4,240,3) hasAngle(2,60,3) in_centre(1,4) linkToCentral_Grasp(4,3,3,3,0,1,4) affected(3,180,240,1) affected(5,180,240,1) affected(4,240,300,1) hasAngle(1,0,5) hasAngle(3,120,4) hasAngle(5,120,4) hasAngle(4,180,4) hasAngle(2,0,4) free(0,6) free(1,6) in_centre(3,5) changeAngle_release(2,1,1,1,0,0,60,3) in_hand(4,5) in_hand(3,5) test(4,linkToCentral_Grasp(4,3,3,3,0,1,4)) grasped(0,4,5) grasped(1,3,5) hasAngle(3,120,5) hasAngle(5,120,5) hasAngle(4,180,5) hasAngle(2,0,5) in_centre(3,6) linkToCentral_Grasp(3,2,2,2,0,1,6) affected(3,120,180,3) affected(5,120,180,3) affected(4,180,240,3) hasAngle(3,60,6) hasAngle(5,120,6) hasAngle(4,180,6) hasAngle(2,300,6) hasAngle(1,300,6) free(0,8) free(1,8) in_centre(2,7) changeAngle_release(3,4,3,1,0,60,120,5) in_hand(3,7) in_hand(2,7) test(6,linkToCentral_Grasp(3,2,2,2,0,1,6)) grasped(0,3,7) grasped(1,2,7) hasAngle(3,60,7) hasAngle(5,120,7) hasAngle(4,180,7) hasAngle(2,300,7) hasAngle(1,300,7) in_centre(2,8) linkToCentral_Grasp(4,5,4,4,1,0,8) affected(1,300,0,5) affected(2,300,0,5) hasAngle(3,120,8) hasAngle(5,180,8) hasAngle(4,240,8) hasAngle(2,300,8) hasAngle(1,300,8) free(0,10) free(1,10) in_centre(4,9) hasAngle(1,0,10) hasAngle(4,300,10) changeAngle_release(3,2,2,0,1,120,60,7) in_hand(4,9) in_hand(5,9) test(8,linkToCentral_Grasp(4,5,4,4,1,0,8)) grasped(0,5,9) grasped(1,4,9) hasAngle(3,120,9) hasAngle(5,180,9) hasAngle(4,240,9) hasAngle(2,300,9) hasAngle(1,300,9) in_centre(4,10) linkToCentral_Grasp(3,2,1,2,1,0,10) affected(5,180,120,7) affected(4,240,180,7) hasAngle(4,300,11) hasAngle(1,0,11) hasAngle(3,180,10) hasAngle(5,180,10) hasAngle(2,0,10) free(0,12) free(1,12) in_centre(2,11) hasAngle(1,0,12) hasAngle(3,240,12) hasAngle(5,240,12) changeAngle_release(4,5,4,1,0,300,240,9) in_hand(3,11) in_hand(2,11) test(10,linkToCentral_Grasp(3,2,1,2,1,0,10)) grasped(0,2,11) grasped(1,3,11) hasAngle(3,180,11) hasAngle(5,180,11) hasAngle(2,0,11) affected(1,0,300,9) affected(3,180,120,9) affected(2,0,300,9) in_centre(2,12) hasAngle(4,0,12) hasAngle(2,0,12) changeAngle_release(3,2,2,1,0,240,180,11) affected(4,0,300,11) affected(5,240,180,11) ok(2,1,60,120,1) ok(2,1,0,60,3) ok(3,4,60,120,5) ok(3,2,120,60,7) ok(4,5,300,240,9) ok(3,2,240,180,11) ok(4,5,300,0,9) ok(4,5,0,300,9) action(0,linkToCentral_Grasp(1,2,1,1,1,0,0)) action(2,linkToCentral_Grasp(2,1,3,1,1,0,2)) action(4,linkToCentral_Grasp(4,3,3,3,0,1,4)) action(6,linkToCentral_Grasp(3,2,2,2,0,1,6)) action(8,linkToCentral_Grasp(4,5,4,4,1,0,8)) action(10,linkToCentral_Grasp(3,2,1,2,1,0,10)) action(1,changeAngle_release(2,1,1,0,1,60,120,1)) action(3,changeAngle_release(2,1,1,1,0,0,60,3)) action(5,changeAngle_release(3,4,3,1,0,60,120,5)) action(7,changeAngle_release(3,2,2,0,1,120,60,7)) action(9,changeAngle_release(4,5,4,1,0,300,240,9)) action(11,changeAngle_release(3,2,2,1,0,240,180,11))
SATISFIABLE

Models       : 1+
Calls        : 1
Time         : 8.324s (Solving: 7.79s 1st Model: 7.79s Unsat: 0.00s)
CPU Time     : 8.324s
