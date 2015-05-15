# Independent Study Project

## Debrief

### B1: Programming concepts

#### Expectation B1.2

Early in this course, we were introduced to the concept of **variables**.

Variables allow a computer program to store data, or information, that must be kept track of.

In Processing (which is a language based on Java), a variable has both a *name* and a *type*.

In my independent study project, I made use of several different types of variables.

As [you can see here](https://github.com/rsgccs/visualizing-tweets/blob/master/trending_topics_visualizer/trending_topics_visualizer.pde#L10-17), I have declared variables of type:

* integer
* float
* float (as an array)
* boolean

Variables of type *integer* can store only integers, for example: -2, -1, 0, 1, and 2.

Variables of type *float* can store both integers, and numbers with decimals, such as -2.342.

If you only need to store integer values, it is better to create a variable of type *integer*, as your program will both run faster and use less memory.

I have also made use of *boolean* variables.  Boolean variables use very little memory, as they can store only two values: *true* or *false*.

#### Expectation B1.5

In my ISP, I had to make use of looping structures in several places.

I [created several arrays](https://github.com/rsgccs/visualizing-tweets/blob/master/trending_topics_visualizer/trending_topics_visualizer.pde#L12-16) that track the position and speed at which the "[control](https://d2mjkw54krpgkk.cloudfront.net/userprofiles/40742/attachments/3cbddd4e0799211c468863c42c014322eaeda4ee-20150403112528811014-IMG_1450.JPG) [points](https://d2mjkw54krpgkk.cloudfront.net/userprofiles/40742/attachments/0d5ffdc39a0e5129ba448a4418b4de511f804902-20150403112529018463-IMG_1451.JPG)" in my sketch move.

In order to update these arrays, I had to [make](https://github.com/rsgccs/visualizing-tweets/blob/master/trending_topics_visualizer/trending_topics_visualizer.pde#L34-54) [use](https://github.com/rsgccs/visualizing-tweets/blob/master/trending_topics_visualizer/trending_topics_visualizer.pde#L75-87) of while loops.  The general idea is that since there are many elements in each array that need to be accesssed, or updated, I had to use a loop to move through each array and either access or update the value of each element.

### B2: Writing programs

#### Expectation B2.1

In planning my program, I made use of a visual-problem solving model – specifically, a storyboard.

You can see the progression here:

1. The [initial appearance](https://d2mjkw54krpgkk.cloudfront.net/userprofiles/40742/attachments/0cf4b432f0dd406d084c1a12d6f5d41f642e7209-20150402130934624925-3.jpg) of my program.
2. The [appearance a little later](https://d2mjkw54krpgkk.cloudfront.net/userprofiles/40742/attachments/d858c6c259247c5d1ebce5edbc20a78195e98b5b-20150402130934724821-4.jpg_) (after some text has been read and counts of each letter of alphabet determined).
3. The [appearance after several "trending topics"](https://d2mjkw54krpgkk.cloudfront.net/userprofiles/40742/attachments/3dcc4e2fe3c009c7ab2fcca5c5894ab92df6b62d-20150402130935012985-5.jpg) have been visualized.

Planning out my program using storyboards, with point-form notes about what I intended my program to do, was helpful in organizing my thoughts about how to write the actual code.

#### Expectation B2.6

In writing my ISP, I learned (the hard way) about the various types of errors that I can encounter when writing a computer program.

A **syntax error** is the most basic type of error that I could encounter.  For example, in Processing, a semi-colon character is required at the end of each statement.  If I forgot to include the semi-colon (this happened often when I was just starting out). I would not be able to run my program, and Processing would report the following error:

    Syntax error, insert ";" to complete BlockStatements

On occasion I also encountered **logic errors**.  A logic error is when I meant for my program to do one thing, but it was doing something else entirely.  Usually when I encountered this type of problem, I could resolve it in one of two ways:

1. Show my program to Mr. Gordon, or a friend.  By explaining what I wanted to do to someone else, I would sometimes end up spotting my own error.  Or, the person I was showing my program to could see the problem that I was not able to spot.
2. Making a better plan.  On occasion I was pressed for time and I would start writing new code without having clearly thought through what I needed to do.  If I took my time and made a sketch in my sketchbook, even if it was really rough, it often helped to clarify my thinking.

A run-time error occurred often when I started using arrays.  I would frequently make mistakes using looping structures, and "run past" the end of the array.  For example, in an array with eight elements, the eighth element would have an index of 7 (since arrays are zero-based, the first element has an index of 0).  However, I would sometimes write code that looked like this:

    int counter = 0;
    while (counter <= 8) {
      myArray[counter] = 10;
      counter = counter + 1;
    }

The problem is that the while loop would iterate from a value of 0 through to (and including) 8.  So I'd be attempting to write a value to an element with an index of 8 (meaning it is the "ninth" element) but my array had only eight elements.  So I'd see a run time error like this:

    ArrayIndexOutOfBoundsException
    
For this example, of course, I could fix my error by adjusting the comparison operator to look for just "less than" instead of "less than or equal to":

    int counter = 0;
    while (counter < 8) {
      myArray[counter] = 10;
      counter = counter + 1;
    }

Overall, my experience with all of these types of errors was both frustrating (very much so at times) but ultimately very helpful.  For example, over time I learned to become good at spotting syntax errors (usually I would scan any new code I'd wrote before running it, and see something that needed fixing).

### B3: Writing programs

#### Expectation B3.1

In my ISP, more often than not, I wrote code that Mr. Gordon referred to as "human-readable".  My understanding of this is that I should:

* indent code blocks appropriately (Processing's "Auto-Format" option – Command-T – was very helpful here)
* use camelCasing and descriptive variable names
* write comments that describe **intent** 

You can see [evidence of all of this here](https://github.com/rsgccs/visualizing-tweets/blob/master/trending_topics_visualizer/trending_topics_visualizer.pde).



