clingo version 5.2.2
Reading from ...5/ASP/ASP/clingo/data/4_4/p_4_4-n2.asp ...
Solving...
Answer: 1
free(0,0) free(1,0) connected(1,1) connected(1,2) connected(2,2) connected(2,3) connected(3,3) connected(3,4) time(0) time(1) time(2) time(3) time(4) time(5) time(6) time(7) gripper(0) gripper(1) joint(1) joint(2) joint(3) link(1) link(2) link(3) link(4) in_centre(3,0) hasAngle(1,0,0) hasAngle(2,0,0) hasAngle(3,270,0) hasAngle(4,270,0) angles(0) angles(90) angles(180) angles(270) goal(1,0) goal(2,0) goal(3,90) goal(4,180) hasAngle(4,270,1) hasAngle(3,270,1) hasAngle(2,0,1) hasAngle(1,0,1) free(1,1) free(0,1) move_link_to_central(2,2,0,0) in_centre(2,1) test(0,move_link_to_central(2,2,0,0)) take_links_to_move(2,3,2,1,0,1) in_hand(2,2) in_centre(2,2) in_hand(3,2) grasped(0,3,2) grasped(1,2,2) free(0,4) free(1,4) in_hand(2,3) in_centre(2,3) in_hand(3,3) grasped(0,3,3) grasped(1,2,3) grasped(0,3,4) in_hand(3,4) free(1,5) free(0,5) in_hand(2,4) in_centre(2,4) grasped(1,2,4) free(0,6) free(1,6) in_centre(2,5) move_link_to_central(3,3,0,5) release_links(3,2,2,0,1,4) in_centre(3,6) test(5,move_link_to_central(3,3,0,5)) take_links_to_move(3,4,3,1,0,6) grasped(0,4,7) grasped(1,3,7) in_hand(3,7) in_hand(4,7) in_centre(3,7) grasped(1,3,8) grasped(0,4,8) in_hand(4,8) in_hand(3,8) moved(2,0) moved(3,5) hasAngle(1,0,2) hasAngle(2,0,2) hasAngle(3,270,2) hasAngle(4,270,2) hasAngle(2,0,3) hasAngle(1,0,3) changeAngle(3,2,2,180,270,0,1,2) hasAngle(3,180,3) hasAngle(4,180,3) hasAngle(1,0,4) hasAngle(2,0,4) hasAngle(2,0,5) hasAngle(1,0,5) hasAngle(4,90,4) hasAngle(3,90,4) changeAngle(3,2,2,90,180,0,1,3) affected(4,180,270,2) hasAngle(3,90,5) hasAngle(4,90,5) hasAngle(1,0,6) hasAngle(2,0,6) affected(4,90,180,3) hasAngle(2,0,7) hasAngle(1,0,7) hasAngle(4,90,6) hasAngle(3,90,6) hasAngle(3,90,7) hasAngle(4,90,7) hasAngle(1,0,8) hasAngle(2,0,8) hasAngle(4,180,8) hasAngle(3,90,8) changeAngle(4,3,3,180,90,0,1,7) ok(3,2,180,270,2) ok(3,2,90,180,3) ok(4,3,180,90,7) has_angle(3,180,3) has_angle(3,90,4) has_angle(4,180,8) action(0,move_link_to_central(2,2,0,0)) action(5,move_link_to_central(3,3,0,5)) action(1,take_links_to_move(2,3,2,1,0,1)) action(6,take_links_to_move(3,4,3,1,0,6)) action(2,changeAngle(3,2,2,180,270,0,1,2)) action(3,changeAngle(3,2,2,90,180,0,1,3)) action(7,changeAngle(4,3,3,180,90,0,1,7)) action(4,release_links(3,2,2,0,1,4))
SATISFIABLE

Models       : 1+
Calls        : 1
Time         : 0.271s (Solving: 0.20s 1st Model: 0.20s Unsat: 0.00s)
CPU Time     : 0.271s