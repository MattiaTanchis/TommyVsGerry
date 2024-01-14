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
    

    

    (:action cat-left-or-right
        :parameters (?c - cat ?y - location ?current_x1 - location ?current_x2 - location ?next_x - location)
        :precondition (and
            (on ?c ?current_x1 ?y)
            (on ?c ?current_x2 ?y)
            (not (full ?next_x ?y))
            (not (= ?current_x1 ?current_x2))
            (move ?current_x2 ?current_x1) 
            (or (move ?current_x1 ?next_x) (move ?next_x ?current_x2))
        )
        :effect (and
            (when
                (and
                    (move ?current_x1 ?next_x) ; The cat will move up
                )
                (and
                    (on ?c ?next_x ?y)
                    (on ?c ?current_x1 ?y)
                    (full ?next_x ?y)
                    (not (on ?c ?current_x2 ?y))
                    (not (full ?current_x2 ?y))
                )
            )

            (when
                (and
                    (move ?next_x ?current_x2) ; The cat will move down
                )
                (and
                    (on ?c ?next_x ?y)
                    (on ?c ?current_x2 ?y)
                    (full ?next_x ?y)
                    (not (on ?c ?current_x1 ?y))
                    (not (full ?current_x1 ?y))
                )
            )

        )
    )
    
   

    (:action cat-up-or-down
        :parameters (?c - cat ?x - location ?current_y1 - location ?current_y2 - location ?next_y - location)
        :precondition (and
            (on ?c ?x ?current_y1)
            (on ?c ?x ?current_y2)
            (not (full ?x ?next_y))
            (not (= ?current_y1 ?current_y2))
            (move ?current_y2 ?current_y1)
            (or (move ?current_y1 ?next_y) (move ?next_y ?current_y2))
        )
        :effect (and
            (when
                (and (move ?current_y1 ?next_y)) ; The cat will move to the left
                (and
                    (on ?c ?x ?next_y)
                    (on ?c ?x ?current_y1)
                    (full ?x ?next_y)
                    (not (on ?c ?x ?current_y2))
                    (not (full ?x ?current_y2))
                )
            )

            (when
                (and (move ?next_y ?current_y2)) ; The cat will move to the right
                (and
                    (on ?c ?x ?next_y)
                    (on ?c ?x ?current_y2)
                    (full ?x ?next_y)
                    (not (on ?c ?x ?current_y1))
                    (not (full ?x ?current_y1))
                )
            )

        )
    )
   
)
