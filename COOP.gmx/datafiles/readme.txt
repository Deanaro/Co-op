+++++++++++++++++++++++++++++++++
|    Console Commands		|
+++++++++++++++++++++++++++++++++

Press ~ (tilde) to open/close the console window
Press ENTER whilst console is open to start typing
Press ENTER again to submit your console command
(Backspace not yet integrated)

Helpful commands
---------------------------------
	Help			| Gives breakdown of output colours
	Exit			| Ends the game

Info commands (proceed commands with 'info ')
---------------------------------
	Players			| Lists the players in the player array, their entity and player number
	Player Pos [number]	| Outputs the X and Y position of the player of number entered


Fun/Fuckery
---------------------------------
	Say Hello		| Computer outputs "hello"...


+++++++++++++++++++++++++++++++++
|    Output to Console		|
+++++++++++++++++++++++++++++++++
To output anything to the console do the following:
Call the script scr_Console_Log_Write from anywhere and pass up to two parameters. The first is the message you want to output, the second is the type of message (which dictates the colour the text is in). If no colour is passed, the default colour is used.

The output types are:
=================================
"reg"/"regular" 		| Basic regular output, grey colour
"command"			| Command output, pink colour
"error"				| Error log output, red colour
"ai"				| Ai/System output, blue colour
default (no type given)		| Default output, yellow colour
=================================

Example calls are:
=================================
scr_Console_Log_Write("Hello World", "ai"); //Outputs 'Hello World' in blue as it is type 'ai'
scr_Console_Log_Write("No object found with ID: " + str_obj_ID, "error"); //Outputs 'No object found with ID:######' in red as it is type 'error'
=================================

/* TO DO -Feel free to add to this list	*/
-Implement console input flashing cursor
-Implement backspace of user input
-Implement the following commands:


