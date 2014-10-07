; This program has been derived and modified from the tool-kit at: 
; https://code.google.com/p/rip-planning-group/source/browse/trunk/project1/sokoban-domain.pddl?r=222 
; See LICENSE file at http://opensource.org/licenses/BSD-3-Clause for the New BSD license

(define (domain sokoban)

(:requirements :strips)

(:predicates 
		
		;Accessible location in Workspace
		(navigable ?l)
		
		;Direction of Movement
		(direction ?d)
		
		;Current location of the Block
		(block-at ?b ?l)
		
		;Current location of the Robot
		(robot-at ?l)
		
		;Selected Block
		(block ?b)
		
		;Location l1 and l2 are next to each other along the direction of Movement
		(adjacent ?l1 ?l2 ?d) 
		
		;Empty location in workspace
		(empty ?l)
	)

(:action move
	
	;Define Move Action
	;Requires from location, to location and direction of move
	;Requires from and to locations to be within workspace
	
	:parameters (?from ?to ?dirMove)
	
	:precondition (and
		
		(navigable ?from) 
		(navigable ?to) 
		(direction ?dirMove) 
		
		;Current location of the Robot as from location
		(robot-at ?from) 
		
		;Requires from and to locations to be next to each other along the direction of Movement
		(adjacent ?from ?to ?dirMove)
		
		;Requires to locations to be empty location in workspace 
		(empty ?to)
		
		)
	
	:effect (and 
		
		;Sets from locations to be empty location in workspace
		(empty ?from)
		
		;Sets Current location of the Robot as the to location in workspace
		(robot-at ?to) 
		
		;Updates to locations as not null, and sets from location as not the current location of the Robot in workspace
		(not (empty ?to))
		(not (robot-at ?from))
		)
	)

(:action push
	
	;Defines parameters for push operation that include robot location, selected block and its location
	;empty location to which the block has to be moved and the direction of the push operation
	
	:parameters (?robotLoc ?blockLoc ?freeLoc ?dirPush ?activeBlock)
	
	:precondition (and 
		
		;Requires robot location, selected block location and the empty location to be open in the workspace
		(navigable ?robotLoc) 
		(navigable ?blockLoc) 
		(navigable ?freeLoc) 
		
		;Initializing input variables
		(direction ?dirPush) 
		(block ?activeBlock) 
		(robot-at ?robotLoc) 
		
		;Initializing resultant variables
		(block-at ?activeBlock ?blockLoc) 
		(adjacent ?robotLoc ?blockLoc ?dirPush) 
		(adjacent ?blockLoc ?freeLoc ?dirPush) 
		(empty ?freeLoc)
		)
	
	:effect (and 
			
		;Sets robots new current location as the selected blocks old location
		(robot-at ?blockLoc)
		
		;Sets selected blocks new current location as the old null location 
		(block-at ?activeBlock ?freeLoc) 
		
		;Sets robots old location as null location
		(empty ?robotLoc) 
		
		;Updates the different locations as per effect of the move
		(not (robot-at ?robotLoc)) 
		(not (block-at ?activeBlock ?blockLoc)) 
		(not (empty ?freeLoc))
		)
	)

)
