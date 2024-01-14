(define (problem problem10x10) (:domain TommyVsGerry)

    ; -----------------------------------------
    ; |   |   |   |   |   |   |   | c | 2 | X |
    ; |   |   |   | c |   |   |   |   | c | 1 |
    ; | c | 4 |   | 10|   | c |   |   |   |   |
    ; |   | c |   |   |   |11 |   | c | 12|   |
    ; | XX| 3 |   |   |   |   |   |   |   |   |
    ; |   |   |   |   |   | c | 9 |   |   |   |
    ; |   |   |   |   |   |   |   |   |   |   |
    ; |   |   | c | 5 | c |   |   |   |   |   |
    ; |   | c | g |   | 7 |   |   |   |   |   |
    ; |   | 6 |   |   | c | 8 |   |   |   |   |
    ; -----------------------------------------

(:objects
	gerry - rat
	cat1 cat2 cat3 cat4 cat5 cat6 cat7 cat8 cat9 cat10 cat11 cat12 - cat
	x1 x2 x3 x4 x5 x6 x7 x8 y1 y2 y3 y4 y5 y6 y7 y8 x9 y9 x10 y10 - location  
)

(:init 
	(on gerry x3 y9)

	(on cat1 x9 y2)
	(on cat1 x10 y2)
	
    (on cat2 x8 y1)
	(on cat2 x9 y1)
  	
    (on cat3 x2 y4)
	(on cat3 x2 y5)
	
    (on cat4 x1 y3)
	(on cat4 x2 y3)
	
    (on cat5 x3 y8)
	(on cat5 x4 y8)
	
    (on cat6 x2 y9)
	(on cat6 x2 y10)

    (on cat7 x5 y8)
	(on cat7 x5 y9)

    (on cat8 x5 y10)
	(on cat8 x6 y10)

    (on cat9 x6 y6)
	(on cat9 x7 y6)

    (on cat10 x4 y2)
	(on cat10 x4 y3)

    (on cat11 x6 y3)
	(on cat11 x6 y4)

    (on cat12 x8 y4)
	(on cat12 x9 y4)

	 (move x2 x1) 
     (move x3 x2)
     (move x4 x3)
     (move x5 x4)
     (move x6 x5)
     (move x7 x6)
     (move x8 x7)
     (move x9 x8)
     (move x10 x9)  

     (move y2 y1) 
     (move y3 y2)
     (move y4 y3)
     (move y5 y4)
     (move y6 y5)
     (move y7 y6)
     (move y8 y7)
     (move y9 y8)
     (move y10 y9)

	(full x3 y9)
	
    (full x9 y2)
	(full x10 y2)
	
    (full x8 y1)
	(full x9 y1)
  	
    (full x2 y4)
	(full x2 y5)
	
    (full x1 y3)
	(full x2 y3)
	
    (full x3 y8)
	(full x4 y8)
	
    (full x2 y9)
	(full x2 y10)

    (full x5 y8)
	(full x5 y9)

    (full x5 y10)
	(full x6 y10)

    (full x6 y6)
	(full x7 y6)

    (full x4 y2)
	(full x4 y3)

    (full x6 y3)
	(full x6 y4)

    (full x8 y4)
	(full x9 y4)
)

(:goal (and
    (visited gerry x10 y1)
    (on gerry x1 y5)
  )
  )

)