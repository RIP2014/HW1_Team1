; This program has been derived and modified from the tool-kit at: 
; https://code.google.com/p/rip-planning-group/source/browse/trunk/project1/sokoban-domain.pddl?r=222 
; See LICENSE file at http://opensource.org/licenses/BSD-3-Clause for the New BSD license

(define (problem sokoban1)

	(:domain sokoban)
	
	(:objects 
		
		;Performs the following steps
		;Define valid directions
		;Define blocks in the problem world
		;Define the problem world co-ordinates

		up down left right
		
		block1
		
		X01-A X01-B X01-C X01-D X01-E X01-F X01-G
		X02-A X02-B X02-C X02-D X02-E X02-F X02-G
		X03-A X03-B X03-C X03-D X03-E X03-F X03-G
		X04-A X04-B X04-C X04-D X04-E X04-F X04-G
		X05-A X05-B X05-C X05-D X05-E X05-F X05-G
		X06-A X06-B X06-C X06-D X06-E X06-F X06-G
		
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
		
		(block block1)
		
		(navigable X02-F)
		(navigable X03-F)
		(navigable X03-E)
		(navigable X02-D)
		(navigable X03-D)
		(navigable X04-D)
		(navigable X05-D)
		(navigable X02-C)
		(navigable X03-C)
		(navigable X04-C)
		(navigable X05-C)
		(navigable X02-B)
		(navigable X03-B)

		(empty X02-F)
		(empty X03-F)
		(empty X02-D)
		(empty X03-D)
		(empty X04-D)
		(empty X05-D)
		(empty X02-C)
		(empty X03-C)
		(empty X05-C)
		(empty X02-B)
		(empty X03-B)

		(robot-at X03-E)
		
		(block-at block1 X04-C)

		(adjacent X01-A X02-A right) (adjacent X01-A X01-B up)
		(adjacent X01-B X02-B right) (adjacent X01-B X01-A down) (adjacent X01-B X01-C up)
		(adjacent X01-C X02-C right) (adjacent X01-C X01-B down) (adjacent X01-C X01-D up)
		(adjacent X01-D X02-D right) (adjacent X01-D X01-C down) (adjacent X01-D X01-E up)
		(adjacent X01-E X02-E right) (adjacent X01-E X01-D down) (adjacent X01-E X01-F up)
		(adjacent X01-F X02-F right) (adjacent X01-F X01-E down) (adjacent X01-F X01-G up)
		(adjacent X01-G X02-G right) (adjacent X01-G X01-F down)

		(adjacent X02-A X01-A left) (adjacent X02-A X03-A right) (adjacent X02-A X02-B up)
		(adjacent X02-B X01-B left) (adjacent X02-B X03-B right) (adjacent X02-B X02-A down) (adjacent X02-B X02-C up)
		(adjacent X02-C X01-C left) (adjacent X02-C X03-C right) (adjacent X02-C X02-B down) (adjacent X02-C X02-D up)
		(adjacent X02-D X01-D left) (adjacent X02-D X03-D right) (adjacent X02-D X02-C down) (adjacent X02-D X02-E up)
		(adjacent X02-E X01-E left) (adjacent X02-E X03-E right) (adjacent X02-E X02-D down) (adjacent X02-E X02-F up)
		(adjacent X02-F X01-F left) (adjacent X02-F X03-F right) (adjacent X02-F X02-E down) (adjacent X02-F X02-G up)
		(adjacent X02-G X01-G left) (adjacent X02-G X03-G right) (adjacent X02-G X02-F down)

		(adjacent X03-A X02-A left) (adjacent X03-A X04-A right) (adjacent X03-A X03-B up)
		(adjacent X03-B X02-B left) (adjacent X03-B X04-B right) (adjacent X03-B X03-A down) (adjacent X03-B X03-C up)
		(adjacent X03-C X02-C left) (adjacent X03-C X04-C right) (adjacent X03-C X03-B down) (adjacent X03-C X03-D up)
		(adjacent X03-D X02-D left) (adjacent X03-D X04-D right) (adjacent X03-D X03-C down) (adjacent X03-D X03-E up)
		(adjacent X03-E X02-E left) (adjacent X03-E X04-E right) (adjacent X03-E X03-D down) (adjacent X03-E X03-F up)
		(adjacent X03-F X02-F left) (adjacent X03-F X04-F right) (adjacent X03-F X03-E down) (adjacent X03-F X03-G up)
		(adjacent X03-G X02-G left) (adjacent X03-G X04-G right) (adjacent X03-G X03-F down)

		(adjacent X04-A X03-A left) (adjacent X04-A X05-A right) (adjacent X04-A X04-B up)
		(adjacent X04-B X03-B left) (adjacent X04-B X05-B right) (adjacent X04-B X04-A down) (adjacent X04-B X04-C up)
		(adjacent X04-C X03-C left) (adjacent X04-C X05-C right) (adjacent X04-C X04-B down) (adjacent X04-C X04-D up)
		(adjacent X04-D X03-D left) (adjacent X04-D X05-D right) (adjacent X04-D X04-C down) (adjacent X04-D X04-E up)
		(adjacent X04-E X03-E left) (adjacent X04-E X05-E right) (adjacent X04-E X04-D down) (adjacent X04-E X04-F up)
		(adjacent X04-F X03-F left) (adjacent X04-F X05-F right) (adjacent X04-F X04-E down) (adjacent X04-F X04-G up)
		(adjacent X04-G X03-G left) (adjacent X04-G X05-G right) (adjacent X04-G X04-F down)

		(adjacent X05-A X04-A left) (adjacent X05-A X06-A right) (adjacent X05-A X05-B up)
		(adjacent X05-B X04-B left) (adjacent X05-B X06-B right) (adjacent X05-B X05-A down) (adjacent X05-B X05-C up)
		(adjacent X05-C X04-C left) (adjacent X05-C X06-C right) (adjacent X05-C X05-B down) (adjacent X05-C X05-D up)
		(adjacent X05-D X04-D left) (adjacent X05-D X06-D right) (adjacent X05-D X05-C down) (adjacent X05-D X05-E up)
		(adjacent X05-E X04-E left) (adjacent X05-E X06-E right) (adjacent X05-E X05-D down) (adjacent X05-E X05-F up)
		(adjacent X05-F X04-F left) (adjacent X05-F X06-F right) (adjacent X05-F X05-E down) (adjacent X05-F X05-G up)
		(adjacent X05-G X04-G left) (adjacent X05-G X06-G right) (adjacent X05-G X05-F down)

		(adjacent X06-A X05-A left) (adjacent X06-A X06-B up)
		(adjacent X06-B X05-B left) (adjacent X06-B X06-A down) (adjacent X06-B X06-C up)
		(adjacent X06-C X05-C left) (adjacent X06-C X06-B down) (adjacent X06-C X06-D up)
		(adjacent X06-D X05-D left) (adjacent X06-D X06-C down) (adjacent X06-D X06-E up)
		(adjacent X06-E X05-E left) (adjacent X06-E X06-D down) (adjacent X06-E X06-F up)
		(adjacent X06-F X05-F left) (adjacent X06-F X06-E down) (adjacent X06-F X06-G up)
		(adjacent X06-G X05-G left) (adjacent X06-G X06-F down)
		
		)

	(:goal

		;Performs the following steps
		;Define the final location of the blocks in the workspace as goal for the planners
		(block-at block1 X03-F)
		
		)
		
)
