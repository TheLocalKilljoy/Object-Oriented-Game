Psuedo-Code:

Title screen:
Create title screen class
Set black background
Write “the impossible game” and “press any button to begin”
Change to game screen if the button is pressed

Player:
Draw square for the player
Make the player move with WASD
Constrain the player to the screen

Goal:
Draw the goal
Change to end screen if player touches goal

Barriers:
Draw barriers
Stop player when they touch the barriers

Rain:
Use array to create rain
Determine distance between player and goal
Decrease rain as player gets closer to goal

End screen:
Draw background
Write “congration”, “you done it”, and “press any button to return to title”
Draw balloons
Use array to make multiple that float up screen

Inventory Skills:

1.	Rect, ellipse, and triangle will be used to draw player, goal, barriers, and balloons
2.	I’ll use different colours for the visible objects using stroke and fill
3.	I’ll specify modes when drawing shapes
4.	I need setup and draw to make anything so I’ll be using those
5.	I need background to draw a background and random to change the colour of the balloons
6.	I’ll use constrain to stop the player from passing the barriers
7.	I’ll use keyPressed to move the player and keyReleased to stop the player
8.	I’ll use increments to change the speed of the player, using + to change the speed when WASD are pressed 
9.	I’ll need local variables in user defined functions to define things only there, such a in a loop to use I to define a variable
10.	I’ll use global variables for variables that apply to everything, such a the speed of the player
11.	PrintLn will tell player the controls
12.	Conditionals will be used to determine when to change states, like if a key is pressed, change to game screen
13.	Used to change game screen to end screen, when player location == goal location, change to end
14.	|| will let the player move with WASD whether lowercase or capitalized
15.	Used to keep track of each screen and change between them
16.	Loops will be used to create a gradient pattern from in the background of the game screen
17.	Nested loop will be used in the gradient loop
18.	Used in the game states 
19.	For loops goes for a set difference, while loop goes until the while is proven false
20.	It has no point I can see but I can do it just to do it
21.	Function will be used to draw and move player, draw score and barriers, and control balloons
22.	Parameter is a variable like X, argument is the number that passes through the parameter
23.	Used to draw the player, setting the shapes and sizes with values
24.	Used to move the player, taking the drawn player object to move the player
25.	Class is a blueprint with variables, Object fills in the variables and makes the thing
26.	Creates and initializes an object instance of a class
27.	To keep things separate and readable
28.	Player, balloons, and goal will be put into classes and use constructor function
29.	Used to make the player, goal, and balloons
30.	Player and balloons will use constructor function to determine their sizes
31.	Arrays have a set size, arraylist can grow
32.	To have less of something as time goes on
33.	Used to make balloons
34.	Used to create rain effect in game screen
35.	Used to create and manage the balloons
36.	Remove will stop rain effects as player reaches goal
37.	If you need both magnitude and direction
38.	Defines speed and location of balloons
39.	Use gravity to make rain fall realistically 
40.	Use distance between goal and player to control how intense the rain is
41.	I’ll create one on the title screen
42.	Takes a vector and keeps it in one direction, good to make something move only one way 
43.	I’ll use dist for the rain
