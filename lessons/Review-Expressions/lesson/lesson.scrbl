#lang curr/lib

@declare-tags[group pedagogy selftaught]
@lesson[#:title "Expressions"
        #:duration "30 minutes"]{
        @itemlist/splicing[
           @tag[pedagogy]{@item{Monitors on!}
           @item{The "review" file should already be open on students' machines and your projector.}
           @item{Review UI of the DrScheme or WeScheme IDE.}}
           @item{At the top of the definitions window, there are a number of variables defined. What is the name of one of the variables?}
           @item{@tag[pedagogy]{Raise your hand if you can tell me:} What value is that variable is defined to have?}
           @item{When I click "Run" @tag[pedagogy]{(click run)}, and type the name of that variable into the interactions window, what should I get back? @tag[pedagogy]{Try it out for yourselves on your own computers.}}
           @tag[pedagogy]{@item{1, 2, 3...Monitors off! Let's focus on the code on the projector for now.}}
           @item{@tag[pedagogy]{Raise your hand if you can tell me:} What is the name and value of another variable that is defined here? @tag[pedagogy]{(Repeat as necessary)}}
           @item{Look at the variable shape. Do you know what a "Rhombus" is. What shape will this draw? How wide do you think it will be? How tall? Will it be solid or outline? What color will it be?}
           @item{@tag[pedagogy]{Monitors on.} Try it out! Was the fill what you expected it to be? It says outline in the code... why did it turn out solid? @tag[pedagogy]{Raise your hand if you can explain this.}}
           @item{The problem is that we used a very confusing variable name! The name was outline, but the value was "solid"! Let this be a lesson to you: always choose your variable names carefully!!}
           @tag[pedagogy]{@item{Have teams define two additional Numbers, and practice using them in the interactions window.}
           @item{Have teams define two additional Strings.}
           @item{Have teams define one more Boolean.}
           @item{Have teams define one more Image.}}
;@tag[selftaught]{THINGS}
           @item{Okay, we've got values, and we know how to define them.}
           @item{However, we've also got some pre-built functions, which let us play around with these values. Do you know a function that works on numbers?}
           @tag[pedagogy]{@item{Review circles of evaluation with numbers, as well as how to convert them to Scheme code}}
;@tag[selftaught]{REMEMBER CIRCLES THINGS}
           @item{@tag[pedagogy]{Let's have a competition! }Turn to page 2 of your workbooks.} 
;workbooks!!!
           @item{Each row has a math expression. You'll have to convert that math expression into Circles of Evaluation, and then convert the Circle into Racket code.}
           @tag[pedagogy]{@item{Each team starts with three points. For every row you get correct, you will get two points. If you get stuck, your team can ask any teacher for help...but it will cost you one point. Questions?}
           @item{On your mark, get set...go!}}]}