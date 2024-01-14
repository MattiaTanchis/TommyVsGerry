(define (domain TommyVsGerry)

    (:requirements :equality :disjunctive-preconditions :negative-preconditions :typing :conditional-effects
    )

    (:types
        creature location - object
        cat rat - creature
    )

    (:predicates
        (on ?v - creature ?x - location ?y - location)
        (full ?x - location ?y - location)
        (move ?b - location ?a - location)
        (visited ?r - creature ?x - location ?y - location)
    )

  

    (:action rat-left-or-right
        :parameters (?r - rat ?y - location ?x - location ?next_x - location)
        :precondition (and
            (on ?r ?x ?y)
            (not (full ?next_x ?y))
            (or 
                (move ?next_x ?x) 
                (move ?x ?next_x) 
            )
        )
        :effect (and
            (on ?r ?next_x ?y)
            (full ?next_x ?y)
            (not (on ?r ?x ?y))
            (not (full ?x ?y))
            (visited ?r ?next_x ?y)
        )
    )

    (:action rat-up-or-down
        :parameters (?r - rat ?x - location ?y - location ?next_y - location)
        :precondition (and
            (on ?r ?x ?y)
            (not (full ?x ?next_y))
            (or 
                (move ?next_y ?y) ; The rat will move to the left
                (move ?y ?next_y) ; The rat will move to the right
            )

        )
        :effect (and
            (on ?r ?x ?next_y)
            (full ?x ?next_y)
            (not (on ?r ?x ?y))
            (not (full ?x ?y))
            (visited ?r ?x ?next_y)
        )
    )
    

   
   
)
