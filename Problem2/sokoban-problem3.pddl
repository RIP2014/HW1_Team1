; This program has been derived and modified from the tool-kit at: 
; https://code.google.com/p/rip-planning-group/source/browse/trunk/project1/sokoban-domain.pddl?r=222 
; See LICENSE file at http://opensource.org/licenses/BSD-3-Clause for the New BSD license

(define (problem sokoban3)
	
	(:domain sokoban)
	
	(:objects 
		
		;Performs the following steps
		;Define valid directions
		;Define blocks in the problem world
		;Define the problem world co-ordinates

		up down left right 
		
		blockA blockB blockC
		
		X01-A X01-B X01-C X01-D X01-E X01-F X01-G X01-H
		X02-A X02-B X02-C X02-D X02-E X02-F X02-G X02-H
		X03-A X03-B X03-C X03-D X03-E X03-F X03-G X03-H
		X04-A X04-B X04-C X04-D X04-E X04-F X04-G X04-H
		X05-A X05-B X05-C X05-D X05-E X05-F X05-G X05-H
		X06-A X06-B X06-C X06-D X06-E X06-F X06-G X06-H 
		X07-A X07-B X07-C X07-D X07-E X07-F X07-G X07-H
		X08-A X08-B X08-C X08-D X08-E X08-F X08-G X08-H
		X09-A X09-B X09-C X09-D X09-E X09-F X09-G X09-H
		X10-A X10-B X10-C X10-D X10-E X10-F X10-G X10-H
		X11-A X11-B X11-C X11-D X11-E X11-F X11-G X11-H
		
	)

	(:init
	
		;Performs the following steps
		;Initialize different directions for use in domain
		;Initialize different blocks for use in domain
		;Initialize different open locations in the workspace for use in domain
		;Initialize different empty locations in the workspace for use in domain
		;Initialize the current location of the robot in the workspace for use in domain
		;Initialize the current location of the blocks in the workspace for use in domain
		;Initialize the adjacency matrix for the different cells in the workspace for use in domain

		(direction up)
		(direction down)
		(direction left) 
		(direction right)
		
		(block blockA)
		(block blockB)
		(block blockC)

		(navigable X08-G)
		(navigable X09-G)
		(navigable X10-G)
		(navigable X08-F)
		(navigable X10-F)
		(navigable X08-E)
		(navigable X10-E)
		(navigable X02-D)
		(navigable X03-D)
		(navigable X04-D)
		(navigable X05-D)
		(navigable X06-D)
		(navigable X07-D)
		(navigable X08-D)
		(navigable X09-D)
		(navigable X10-D)
		(navigable X02-C)
		(navigable X04-C)
		(navigable X06-C)
		(navigable X08-C)
		(navigable X02-B)
		(navigable X03-B)
		(navigable X04-B)
		(navigable X05-B)
		(navigable X06-B)
		(navigable X07-B)
		(navigable X08-B)
		
		(empty X08-G)
		(empty X09-G)
		(empty X10-G)
		(empty X08-F)
		(empty X10-F)
		(empty X08-E)
		(empty X10-E)
		(empty X02-D)
		(empty X04-D)
		(empty X06-D)
		(empty X08-D)
		(empty X10-D)
		(empty X02-C)
		(empty X04-C)
		(empty X06-C)
		(empty X08-C)
		(empty X02-B)
		(empty X03-B)
		(empty X04-B)
		(empty X05-B)
		(empty X06-B)
		(empty X07-B)
		(empty X08-B)
  
		(robot-at X03-D)
		
		(block-at blockA X09-D)
		(block-at blockB X07-D)
		(block-at blockC X05-D)

		(adjacent X01-A X02-A right) (adjacent X01-A X01-B up)
		(adjacent X01-B X02-B right) (adjacent X01-B X01-A down) (adjacent X01-B X01-C up)
		(adjacent X01-C X02-C right) (adjacent X01-C X01-B down) (adjacent X01-C X01-D up)
		(adjacent X01-D X02-D right) (adjacent X01-D X01-C down) (adjacent X01-D X01-E up)
		(adjacent X01-E X02-E right) (adjacent X01-E X01-D down) (adjacent X01-E X01-F up)
		(adjacent X01-F X02-F right) (adjacent X01-F X01-E down) (adjacent X01-F X01-G up)
		(adjacent X01-G X02-G right) (adjacent X01-G X01-F down) (adjacent X01-G X01-H up)
		(adjacent X01-H X02-H right) (adjacent X01-H X01-G down)

		(adjacent X02-A X01-A left) (adjacent X02-A X03-A right) (adjacent X02-A X02-B up)
		(adjacent X02-B X01-B left) (adjacent X02-B X03-B right) (adjacent X02-B X02-A down) (adjacent X02-B X02-C up)
		(adjacent X02-C X01-C left) (adjacent X02-C X03-C right) (adjacent X02-C X02-B down) (adjacent X02-C X02-D up)
		(adjacent X02-D X01-D left) (adjacent X02-D X03-D right) (adjacent X02-D X02-C down) (adjacent X02-D X02-E up)
		(adjacent X02-E X01-E left) (adjacent X02-E X03-E right) (adjacent X02-E X02-D down) (adjacent X02-E X02-F up)
		(adjacent X02-F X01-F left) (adjacent X02-F X03-F right) (adjacent X02-F X02-E down) (adjacent X02-F X02-G up)
		(adjacent X02-G X01-G left) (adjacent X02-G X03-G right) (adjacent X02-G X02-F down) (adjacent X02-G X02-H up)
		(adjacent X02-H X01-H left) (adjacent X02-H X03-H right) (adjacent X02-H X02-G down)

		(adjacent X03-A X02-A left) (adjacent X03-A X04-A right) (adjacent X03-A X03-B up)
		(adjacent X03-B X02-B left) (adjacent X03-B X04-B right) (adjacent X03-B X03-A down) (adjacent X03-B X03-C up)
		(adjacent X03-C X02-C left) (adjacent X03-C X04-C right) (adjacent X03-C X03-B down) (adjacent X03-C X03-D up)
		(adjacent X03-D X02-D left) (adjacent X03-D X04-D right) (adjacent X03-D X03-C down) (adjacent X03-D X03-E up)
		(adjacent X03-E X02-E left) (adjacent X03-E X04-E right) (adjacent X03-E X03-D down) (adjacent X03-E X03-F up)
		(adjacent X03-F X02-F left) (adjacent X03-F X04-F right) (adjacent X03-F X03-E down) (adjacent X03-F X03-G up)
		(adjacent X03-G X02-G left) (adjacent X03-G X04-G right) (adjacent X03-G X03-F down) (adjacent X03-G X03-H up)
		(adjacent X03-H X02-H left) (adjacent X03-H X04-H right) (adjacent X03-H X03-G down)

		(adjacent X04-A X03-A left) (adjacent X04-A X05-A right) (adjacent X04-A X04-B up)
		(adjacent X04-B X03-B left) (adjacent X04-B X05-B right) (adjacent X04-B X04-A down) (adjacent X04-B X04-C up)
		(adjacent X04-C X03-C left) (adjacent X04-C X05-C right) (adjacent X04-C X04-B down) (adjacent X04-C X04-D up)
		(adjacent X04-D X03-D left) (adjacent X04-D X05-D right) (adjacent X04-D X04-C down) (adjacent X04-D X04-E up)
		(adjacent X04-E X03-E left) (adjacent X04-E X05-E right) (adjacent X04-E X04-D down) (adjacent X04-E X04-F up)
		(adjacent X04-F X03-F left) (adjacent X04-F X05-F right) (adjacent X04-F X04-E down) (adjacent X04-F X04-G up)
		(adjacent X04-G X03-G left) (adjacent X04-G X05-G right) (adjacent X04-G X04-F down) (adjacent X04-G X04-H up)
		(adjacent X04-H X03-H left) (adjacent X04-H X05-H right) (adjacent X04-H X04-G down)

		(adjacent X05-A X04-A left) (adjacent X05-A X06-A right) (adjacent X05-A X05-B up)
		(adjacent X05-B X04-B left) (adjacent X05-B X06-B right) (adjacent X05-B X05-A down) (adjacent X05-B X05-C up)
		(adjacent X05-C X04-C left) (adjacent X05-C X06-C right) (adjacent X05-C X05-B down) (adjacent X05-C X05-D up)
		(adjacent X05-D X04-D left) (adjacent X05-D X06-D right) (adjacent X05-D X05-C down) (adjacent X05-D X05-E up)
		(adjacent X05-E X04-E left) (adjacent X05-E X06-E right) (adjacent X05-E X05-D down) (adjacent X05-E X05-F up)
		(adjacent X05-F X04-F left) (adjacent X05-F X06-F right) (adjacent X05-F X05-E down) (adjacent X05-F X05-G up)
		(adjacent X05-G X04-G left) (adjacent X05-G X06-G right) (adjacent X05-G X05-F down) (adjacent X05-G X05-H up)
		(adjacent X05-H X04-H left) (adjacent X05-H X06-H right) (adjacent X05-H X05-G down)

		(adjacent X06-A X05-A left) (adjacent X06-A X07-A right) (adjacent X06-A X06-B up)
		(adjacent X06-B X05-B left) (adjacent X06-B X07-B right) (adjacent X06-B X06-A down) (adjacent X06-B X06-C up)
		(adjacent X06-C X05-C left) (adjacent X06-C X07-C right) (adjacent X06-C X06-B down) (adjacent X06-C X06-D up)
		(adjacent X06-D X05-D left) (adjacent X06-D X07-D right) (adjacent X06-D X06-C down) (adjacent X06-D X06-E up)
		(adjacent X06-E X05-E left) (adjacent X06-E X07-E right) (adjacent X06-E X06-D down) (adjacent X06-E X06-F up)
		(adjacent X06-F X05-F left) (adjacent X06-F X07-F right) (adjacent X06-F X06-E down) (adjacent X06-F X06-G up)
		(adjacent X06-G X05-G left) (adjacent X06-G X07-G right) (adjacent X06-G X06-F down) (adjacent X06-G X06-H up)
		(adjacent X06-H X05-H left) (adjacent X06-H X07-H right) (adjacent X06-H X06-G down)


		(adjacent X07-A X06-A left) (adjacent X07-A X08-A right) (adjacent X07-A X07-B up)
		(adjacent X07-B X06-B left) (adjacent X07-B X08-B right) (adjacent X07-B X07-A down) (adjacent X07-B X07-C up)
		(adjacent X07-C X06-C left) (adjacent X07-C X08-C right) (adjacent X07-C X07-B down) (adjacent X07-C X07-D up)
		(adjacent X07-D X06-D left) (adjacent X07-D X08-D right) (adjacent X07-D X07-C down) (adjacent X07-D X07-E up)
		(adjacent X07-E X06-E left) (adjacent X07-E X08-E right) (adjacent X07-E X07-D down) (adjacent X07-E X07-F up)
		(adjacent X07-F X06-F left) (adjacent X07-F X08-F right) (adjacent X07-F X07-E down) (adjacent X07-F X07-G up)
		(adjacent X07-G X06-G left) (adjacent X07-G X08-G right) (adjacent X07-G X07-F down) (adjacent X07-G X07-H up)
		(adjacent X07-H X06-H left) (adjacent X07-H X08-H right) (adjacent X07-H X07-G down)

		(adjacent X08-A X07-A left) (adjacent X08-A X09-A right) (adjacent X08-A X08-B up)
		(adjacent X08-B X07-B left) (adjacent X08-B X09-B right) (adjacent X08-B X08-A down) (adjacent X08-B X08-C up)
		(adjacent X08-C X07-C left) (adjacent X08-C X09-C right) (adjacent X08-C X08-B down) (adjacent X08-C X08-D up)
		(adjacent X08-D X07-D left) (adjacent X08-D X09-D right) (adjacent X08-D X08-C down) (adjacent X08-D X08-E up)
		(adjacent X08-E X07-E left) (adjacent X08-E X09-E right) (adjacent X08-E X08-D down) (adjacent X08-E X08-F up)
		(adjacent X08-F X07-F left) (adjacent X08-F X09-F right) (adjacent X08-F X08-E down) (adjacent X08-F X08-G up)
		(adjacent X08-G X07-G left) (adjacent X08-G X09-G right) (adjacent X08-G X08-F down) (adjacent X08-G X08-H up)
		(adjacent X08-H X07-H left) (adjacent X08-H X09-H right) (adjacent X08-H X08-G down)

		(adjacent X09-A X08-A left) (adjacent X09-A X10-A right) (adjacent X09-A X09-B up)
		(adjacent X09-B X08-B left) (adjacent X09-B X10-B right) (adjacent X09-B X09-A down) (adjacent X09-B X09-C up)
		(adjacent X09-C X08-C left) (adjacent X09-C X10-C right) (adjacent X09-C X09-B down) (adjacent X09-C X09-D up)
		(adjacent X09-D X08-D left) (adjacent X09-D X10-D right) (adjacent X09-D X09-C down) (adjacent X09-D X09-E up)
		(adjacent X09-E X08-E left) (adjacent X09-E X10-E right) (adjacent X09-E X09-D down) (adjacent X09-E X09-F up)
		(adjacent X09-F X08-F left) (adjacent X09-F X10-F right) (adjacent X09-F X09-E down) (adjacent X09-F X09-G up)
		(adjacent X09-G X08-G left) (adjacent X09-G X10-G right) (adjacent X09-G X09-F down) (adjacent X09-G X09-H up)
		(adjacent X09-H X08-H left) (adjacent X09-H X10-H right) (adjacent X09-H X09-G down)

		(adjacent X10-A X09-A left) (adjacent X10-A X11-A right) (adjacent X10-A X10-B up)
		(adjacent X10-B X09-B left) (adjacent X10-B X11-B right) (adjacent X10-B X10-A down) (adjacent X10-B X10-C up)
		(adjacent X10-C X09-C left) (adjacent X10-C X11-C right) (adjacent X10-C X10-B down) (adjacent X10-C X10-D up)
		(adjacent X10-D X09-D left) (adjacent X10-D X11-D right) (adjacent X10-D X10-C down) (adjacent X10-D X10-E up)
		(adjacent X10-E X09-E left) (adjacent X10-E X11-E right) (adjacent X10-E X10-D down) (adjacent X10-E X10-F up)
		(adjacent X10-F X09-F left) (adjacent X10-F X11-F right) (adjacent X10-F X10-E down) (adjacent X10-F X10-G up)
		(adjacent X10-G X09-G left) (adjacent X10-G X11-G right) (adjacent X10-G X10-F down) (adjacent X10-G X10-H up)
		(adjacent X10-H X09-H left) (adjacent X10-H X11-H right) (adjacent X10-H X10-G down)

		(adjacent X11-A X10-A left) (adjacent X11-A X11-B up)
		(adjacent X11-B X10-B left) (adjacent X11-B X11-A down) (adjacent X11-B X11-C up)
		(adjacent X11-C X10-C left) (adjacent X11-C X11-B down) (adjacent X11-C X11-D up)
		(adjacent X11-D X10-D left) (adjacent X11-D X11-C down) (adjacent X11-D X11-E up)
		(adjacent X11-E X10-E left) (adjacent X11-E X11-D down) (adjacent X11-E X11-F up)
		(adjacent X11-F X10-F left) (adjacent X11-F X11-E down) (adjacent X11-F X11-G up)
		(adjacent X11-G X10-G left) (adjacent X11-G X11-F down) (adjacent X11-G X11-H up)
		(adjacent X11-H X10-H left) (adjacent X11-H X11-G down)

	)

	(:goal
		
		;Performs the following steps
		;Define the final location of the blocks in the workspace as goal for the planners
		
		(and (block-at blockA X08-G) (block-at blockB X08-F) (block-at blockC X08-E))
	
	)

)
