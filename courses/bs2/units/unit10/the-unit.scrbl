#lang curr/lib

@title{Unit 10: Collision Detection and Completing Your Game}
@declare-tags[]

@unit-overview/auto[#:lang-table (list (list "Number" @code{+ - * / num-sqr num-sqrt num-expt}) 
                                       (list "String" @code{string-append string-length})                          
                                       (list "Image" @code{rectangle circle triangle ellipse radial-star scale rotate put-image})
                                       (list "Boolean" @code{= > < string-equal and or}))]{  
@unit-descr{Using the @code{distance} and @code{is-collision} functions they wrote for their Ninja Cat games, students complete collision detection in their own games, and return to the lists of questions to ask their world from the previous unit to complete their video games.}
 }

@unit-lessons{
@lesson/studteach[#:title "Introduction"
        #:duration "5 minutes"
        #:overview ""
        #:learning-objectives @itemlist[]
        #:evidence-statements @itemlist[]
        #:product-outcomes @itemlist[]
        #:standards (list)
        #:materials @itemlist[@item{Pens/pencils for the students, fresh whiteboard markers for teachers}
                            @item{Class poster (List of rules, design recipe, course calendar)}
                            @item{Editing environment (Pyret Editor)}
                            @item{Student workbooks}
                            @item{Language Table}
                            ]
        #:preparation @itemlist[@item{Seating arrangements: ideally clusters of desks/tables}]
        #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        @points[@point{@student{Welcome to the home stretch! You've learned a LOT over the last 9 units, like data structures, a brand new programming language, event-driven programming, and even extended your knowledge of piecewise functions. In the last unit, you'll finish implementing the tests you listed in the last unit, and collision detection for your game. Let's get started.}
                       @teacher{ }}
           ]
         }
                               
          @lesson/studteach[#:title "Collision Detection in Your Game"
        #:duration "35 minutes"
        #:overview ""
        #:learning-objectives @itemlist[@item{Students will write their own @code{distance} and @code{is-collision} function to detect collisions of characters in their games.}]
        #:evidence-statements @itemlist[]
        #:product-outcomes @itemlist[@item{Students will use different Ask branches to identify collisions in their games}]
        #:standards (list)
        #:materials @itemlist[]
        #:preparation @itemlist[@item{}]
        #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        @points[@point{@student{The final addition that everyone will need in their games is collision detection! What should happen when your player collides with your danger, or target? Do you have a score as part of your world structure? Thankfully, you've already completed the Design Recipe for the functions you'll need to add to your game. @activity{Turn to @worksheet-link[#:page 27 #:name "line-length"] in your workbook. Starting with @code{line-length}, add your @code{line-length}, @code{distance}, and @code{is-collision} functions into your game file.}}
                       @teacher{Pay careful attention to the order in which the coordinates are given to the @code{distance} function. The player's x-coordinate (@code{px}) must be given first, followed by the player's y (@code{py}), character's x (@code{cx}), and character's y (@code{cy}). Inside the body of the function, @code{line-length} can only calculate lengths on the same axis (@code{line-length(px, cx)} and @code{line-length(cx, cy)}). Just like with making data structures, order matters, and the distance function will not work otherwise. Also be sure to check that students are using @code{num-sqr} and @code{num-sqrt} in the correct places.}
                       }
                 @point{@student{Now that you have all the necessary functions which will check whether characters are colliding, you can add to your @code{next-world} function to modify the world when this happens. Remember what you wrote for the Ninja Cat game: first, you checked whether the cat and dog were colliding. Your game might not have a cat and dog, of course. Maybe you want to check if the player has reached a goal at certain coordinates, or if @italic{your} player and danger have collided. @activity{@itemlist[@item{What function checks if two thing are colliding?}
                                          @item{What do the inputs need to be?}
                                          @item{What dot-accessots will you need to use?}
                                          @item{What should happen when these two things collide? What will your new world structure look like after this collision?}
                                          @item{add your new @code{ask} branchest to @code{next-world} so that the world changes when characters collide.}]}
                                                                         }
                      @teacher{Work with students in pairs or small groups to complete these activities.}}  
                 ]
         }
                                 
@lesson/studteach[#:title "Branches in next-world"
        #:duration "45 minutes"
        #:overview ""
        #:learning-objectives @itemlist[]
        #:evidence-statements @itemlist[]
        #:product-outcomes @itemlist[]
        #:standards (list)
        #:materials @itemlist[]
        #:preparation @itemlist[@item{}]
        #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        @points[@point{@student{Now you've programmed your games to respond when different characters collide, and your games are almost finished! Think about what else you want to add: a scoring system? More dangers, targets, or players? Levels? Remember that for everything that @italic{changes} in your game, you'll need to add to your world structure, and this is your chance: @activity{Turn to @worksheet-link[#:page 41 #:name "Test and Result"] in your workbook and finish adding the things on your list to your game file.} Remember, if you want to change the @italic{appearance} of your games, you'll need to change your @code{draw-world} function to a piecewise function. You can write the tests and results you'll need for this function on @worksheet-link[#:page 43 #:name "Test and Result in draw-world"].}
                       @teacher{Work in pairs or small groups to assist students with completing their games.}}
                 ]
       }
       
@lesson/studteach[#:title "Closing"
        #:duration "5 minutes"
        #:overview ""
        #:learning-objectives @itemlist[]
        #:evidence-statements @itemlist[]
        #:product-outcomes @itemlist[]
        #:standards (list)
        #:materials @itemlist[]
        #:preparation @itemlist[@item{}]
        #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
       @points[@point{@student{Congratulations! You started from scratch, and now have a complete, working videogame! We hope you’ll continue working on these games yourself, keep hacking, and keep learning!}
                        @teacher{Have students show off their completed games!}}
                 ]
         }
       }
                                 
                        
       
   
          