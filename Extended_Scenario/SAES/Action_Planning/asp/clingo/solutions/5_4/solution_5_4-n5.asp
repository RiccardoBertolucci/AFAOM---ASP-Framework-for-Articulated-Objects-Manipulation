clingo version 5.2.2
Reading from ...5/ASP/ASP/clingo/data/5_4/p_5_4-n5.asp ...
Solving...
Answer: 1
free(0,0) free(1,0) connected(1,1) connected(1,2) connected(2,2) connected(2,3) connected(3,3) connected(3,4) connected(4,4) connected(4,5) time(0) time(1) time(2) time(3) time(4) time(5) time(6) time(7) time(8) time(9) gripper(0) gripper(1) joint(1) joint(2) joint(3) joint(4) link(1) link(2) link(3) link(4) link(5) in_centre(3,0) hasAngle(1,0,0) hasAngle(2,90,0) hasAngle(3,0,0) hasAngle(4,270,0) hasAngle(5,90,0) angles(0) angles(90) angles(180) angles(270) goal(1,0) goal(2,0) goal(3,270) goal(4,90) goal(5,180) hasAngle(5,90,1) hasAngle(4,270,1) hasAngle(3,0,1) hasAngle(2,90,1) hasAngle(1,0,1) take_links_to_move(4,3,3,1,0,0) in_centre(3,1) free(0,2) free(1,2) in_hand(3,1) in_hand(4,1) grasped(0,3,1) grasped(1,4,1) free(1,3) free(0,3) in_hand(3,2) in_centre(3,2) in_hand(4,2) grasped(1,4,2) grasped(0,3,2) free(0,4) free(1,4) in_centre(3,3) move_link_to_central(1,1,1,3) release_links(3,4,3,0,1,2) in_centre(1,4) test(3,move_link_to_central(1,1,1,3)) take_links_to_move(1,2,1,0,1,4) free(0,6) free(1,6) in_centre(1,5) in_hand(1,5) in_hand(2,5) grasped(0,1,5) grasped(1,2,5) free(1,7) free(0,7) in_centre(1,6) in_hand(1,6) in_hand(2,6) grasped(1,2,6) grasped(0,1,6) free(0,8) free(1,8) in_centre(1,7) move_link_to_central(5,4,0,7) release_links(1,2,1,0,1,6) in_centre(4,8) test(7,move_link_to_central(5,4,0,7)) take_links_to_move(4,5,4,0,1,8) grasped(0,4,9) in_hand(4,9) in_centre(4,9) in_hand(5,9) grasped(1,5,9) grasped(0,4,10) in_hand(4,10) in_hand(5,10) grasped(1,5,10) moved(1,3) moved(4,7) hasAngle(1,0,2) hasAngle(2,90,2) hasAngle(3,0,2) changeAngle(4,3,3,180,270,1,0,1) hasAngle(3,0,3) hasAngle(2,90,3) hasAngle(1,0,3) hasAngle(4,180,2) hasAngle(4,180,3) hasAngle(1,0,4) hasAngle(2,90,4) hasAngle(3,0,4) hasAngle(5,0,3) affected(5,0,90,1) hasAngle(5,0,2) hasAngle(5,0,4) hasAngle(3,0,5) hasAngle(2,90,5) hasAngle(1,0,5) hasAngle(4,180,4) hasAngle(4,180,5) hasAngle(1,0,6) hasAngle(5,0,5) changeAngle(2,1,1,0,90,1,0,5) hasAngle(5,270,6) hasAngle(2,0,6) hasAngle(1,0,7) hasAngle(4,90,6) hasAngle(3,270,6) hasAngle(3,270,7) hasAngle(4,90,7) hasAngle(1,0,8) hasAngle(2,0,7) hasAngle(5,270,7) affected(3,270,0,5) affected(4,90,180,5) affected(5,270,0,5) hasAngle(5,270,8) hasAngle(2,0,8) hasAngle(1,0,9) hasAngle(4,90,8) hasAngle(3,270,8) hasAngle(3,270,9) hasAngle(4,90,9) hasAngle(1,0,10) hasAngle(2,0,9) hasAngle(5,270,9) hasAngle(5,180,10) hasAngle(2,0,10) hasAngle(4,90,10) hasAngle(3,270,10) changeAngle(5,4,4,180,270,1,0,9) ok(4,3,180,270,1) ok(2,1,0,90,5) ok(5,4,180,270,9) has_angle(4,180,2) has_angle(2,0,6) has_angle(5,180,10) action(3,move_link_to_central(1,1,1,3)) action(7,move_link_to_central(5,4,0,7)) action(0,take_links_to_move(4,3,3,1,0,0)) action(4,take_links_to_move(1,2,1,0,1,4)) action(8,take_links_to_move(4,5,4,0,1,8)) action(1,changeAngle(4,3,3,180,270,1,0,1)) action(5,changeAngle(2,1,1,0,90,1,0,5)) action(9,changeAngle(5,4,4,180,270,1,0,9)) action(2,release_links(3,4,3,0,1,2)) action(6,release_links(1,2,1,0,1,6))
SATISFIABLE

Models       : 1+
Calls        : 1
Time         : 3.956s (Solving: 3.85s 1st Model: 3.85s Unsat: 0.00s)
CPU Time     : 3.956s
