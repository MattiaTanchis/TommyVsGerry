(define (problem problem9x9) (:domain TommyVsGerry)

    ; ------------------------------------- 
    ; |   | g |   | c | 10|   |   |   |   |   
    ; |   | c | 8 |   |   |   |   |   |   |   
    ; |   |   |   |   |   |   |   |   |   |   
    ; |   |   |   | c | 7 |   |   |   |   |   
    ; |   |   |   |   |   |   | c |   |   |
    ; | c | 5 |   |   |   |   | 9 |   | c |   
    ; |   | c |   |   |   |   |   | c | 2 |   
    ; | XX| 4 |   | c |   |   |   | 1 | X |   
    ; |   |   |   | 6 |   | c | 3 |   |   |   
    ; -------------------------------------

(:objects
	gerry - rat
	cat1 cat2 cat3 cat4 cat5 cat6 cat7 cat8 cat9 cat10   - cat
	x1 x2 x3 x4 x5 x6 x7 x8 y1 y2 y3 y4 y5 y6 y7 y8 x9 y9  - location  
)

(:init 
	(on gerry x2 y1)

	(on cat1 x8 y7)
	(on cat1 x8 y8)
	
    (on cat2 x9 y6)
	(on cat2 x9 y7)
  	
    (on cat3 x6 y9)
	(on cat3 x7 y9)
	
    (on cat4 x2 y7)
	(on cat4 x2 y8)
	
    (on cat5 x1 y6)
	(on cat5 x2 y6)
	
    (on cat6 x4 y8)
	(on cat6 x4 y9)

    (on cat7 x4 y4)
	(on cat7 x5 y4)

    (on cat8 x2 y2)
	(on cat8 x3 y2)

    (on cat9 x7 y5)
	(on cat9 x7 y6)

    (on cat10 x4 y1)
	(on cat10 x5 y1)



    

	 (move x2 x1) 
     (move x3 x2)
     (move x4 x3)
     (move x5 x4)
     (move x6 x5)
     (move x7 x6)
     (move x8 x7)
     (move x9 x8)
       

     (move y2 y1) 
     (move y3 y2)
     (move y4 y3)
     (move y5 y4)
     (move y6 y5)
     (move y7 y6)
     (move y8 y7)
     (move y9 y8)
     

	(full x2 y1)
	
    (full x8 y7)
	(full x8 y8)
	
    (full x9 y6)
	(full x9 y7)
  	
    (full x6 y9)
	(full x7 y9)
	
    (full x2 y7)
	(full x2 y8)
	
    (full x1 y6)
	(full x2 y6)
	
    (full x4 y8)
	(full x4 y9)

    (full x4 y4)
	(full x5 y4)

    (full x2 y2)
	(full x3 y2)

    (full x7 y5)
	(full x7 y6)

    (full x4 y1)
	(full x5 y1)


    
)

(:goal (and
    (visited gerry x9 y8)
    (on gerry x1 y7)
  )
  )

)