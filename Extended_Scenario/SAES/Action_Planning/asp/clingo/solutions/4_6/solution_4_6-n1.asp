clingo version 5.2.2
Reading from ...5/ASP/ASP/clingo/data/4_6/p_4_6-n1.asp ...
Solving...
Answer: 1
free(0,0) free(1,0) connected(1,1) connected(1,2) connected(2,2) connected(2,3) connected(3,3) connected(3,4) time(0) time(1) time(2) time(3) time(4) time(5) time(6) time(7) time(8) time(9) time(10) gripper(0) gripper(1) joint(1) joint(2) joint(3) link(1) link(2) link(3) link(4) in_centre(3,0) hasAngle(1,0,0) hasAngle(2,180,0) hasAngle(3,300,0) hasAngle(4,0,0) angles(0) angles(60) angles(120) angles(180) angles(240) angles(300) goal(2,120) goal(3,0) goal(4,240) hasAngle(4,0,1) hasAngle(3,300,1) hasAngle(2,180,1) hasAngle(1,0,1) take_links_to_move(4,3,3,0,1,0) in_centre(3,1) in_hand(3,1) in_hand(4,1) grasped(0,4,1) grasped(1,3,1) in_hand(3,2) in_centre(3,2) in_hand(4,2) grasped(1,3,2) grasped(0,4,2) free(0,4) free(1,4) in_hand(3,3) in_centre(3,3) in_hand(4,3) grasped(0,4,3) grasped(1,3,3) grasped(1,3,4) grasped(0,4,4) in_hand(4,4) in_hand(3,4) free(1,5) free(0,5) in_centre(3,4) release_links(4,3,3,0,1,4) free(0,6) free(1,6) in_centre(3,5) move_link_to_central(3,2,1,5) in_centre(2,6) test(5,move_link_to_central(3,2,1,5)) take_links_to_move(2,3,2,1,0,6) grasped(0,3,7) in_hand(3,7) in_hand(2,7) in_centre(2,7) grasped(1,2,7) grasped(0,3,8) in_hand(3,8) in_hand(2,8) in_centre(2,8) grasped(1,2,8) grasped(0,3,9) in_hand(3,9) in_hand(2,9) in_centre(2,9) grasped(1,2,9) grasped(0,3,10) in_hand(3,10) in_hand(2,10) in_centre(2,10) grasped(1,2,10) grasped(0,3,11) in_hand(3,11) in_hand(2,11) grasped(1,2,11) moved(2,5) hasAngle(4,0,2) changeAngle(3,4,3,240,300,1,0,1) hasAngle(4,0,3) hasAngle(3,240,2) hasAngle(3,180,3) hasAngle(4,0,4) changeAngle(3,4,3,180,240,1,0,2) hasAngle(1,240,3) hasAngle(2,60,3) affected(2,120,180,1) affected(1,300,0,1) hasAngle(1,300,2) hasAngle(2,120,2) hasAngle(2,0,4) hasAngle(1,180,4) hasAngle(4,0,5) hasAngle(3,120,4) changeAngle(3,4,3,120,180,1,0,3) affected(2,60,120,2) affected(1,240,300,2) hasAngle(3,120,5) hasAngle(4,0,6) hasAngle(1,180,5) hasAngle(2,0,5) affected(1,180,240,3) affected(2,0,60,3) hasAngle(2,0,6) hasAngle(1,180,6) hasAngle(4,0,7) hasAngle(3,120,6) hasAngle(3,120,7) hasAngle(1,180,7) hasAngle(2,0,7) hasAngle(2,0,8) hasAngle(1,180,8) hasAngle(4,300,8) hasAngle(3,60,8) changeAngle(3,2,2,60,120,0,1,7) hasAngle(3,0,9) hasAngle(4,240,9) hasAngle(1,180,9) hasAngle(2,0,9) changeAngle(3,2,2,0,60,0,1,8) affected(4,300,0,7) hasAngle(2,60,10) hasAngle(1,240,10) hasAngle(4,240,10) hasAngle(3,0,10) changeAngle(2,3,2,60,0,1,0,9) affected(4,240,300,8) hasAngle(3,0,11) hasAngle(4,240,11) hasAngle(1,300,11) hasAngle(2,120,11) changeAngle(2,3,2,120,60,1,0,10) affected(1,240,180,9) affected(1,300,240,10) ok(3,4,240,300,1) ok(3,4,180,240,2) ok(3,4,120,180,3) ok(3,2,60,120,7) ok(3,2,0,60,8) ok(2,3,60,0,9) ok(2,3,120,60,10) has_angle(3,240,2) has_angle(3,180,3) has_angle(3,120,4) has_angle(3,60,8) has_angle(3,0,9) has_angle(2,60,10) has_angle(2,120,11) action(5,move_link_to_central(3,2,1,5)) action(0,take_links_to_move(4,3,3,0,1,0)) action(6,take_links_to_move(2,3,2,1,0,6)) action(1,changeAngle(3,4,3,240,300,1,0,1)) action(2,changeAngle(3,4,3,180,240,1,0,2)) action(3,changeAngle(3,4,3,120,180,1,0,3)) action(7,changeAngle(3,2,2,60,120,0,1,7)) action(8,changeAngle(3,2,2,0,60,0,1,8)) action(9,changeAngle(2,3,2,60,0,1,0,9)) action(10,changeAngle(2,3,2,120,60,1,0,10)) action(4,release_links(4,3,3,0,1,4))
SATISFIABLE

Models       : 1+
Calls        : 1
Time         : 1.359s (Solving: 1.22s 1st Model: 1.22s Unsat: 0.00s)
CPU Time     : 1.359s