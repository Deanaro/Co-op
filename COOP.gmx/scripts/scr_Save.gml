//saves the global variables to a ini file and saves the current room and spawn area.

//requires no arguments

//get the current room and calculate a spawn location 

var roomname = room_get_name(room);
//Note: id returns the instance id of the object that ran the code therefore any player can initiate a save.
var xpos = id.x; //there is no need to use id.
var ypos = id.y;

var x1 = xpos - 100;
var x2 = xpos + 100;
var y1 = ypos + 100;
var y2 = ypos - 100;



//check if a save file exists, delete it if there is

if (file_exists("save.ini")) 
   {
   file_delete("save.ini");
   }

ini_open("save.ini");

//count through global.slot and save the data

for(var i = 0 ; i <= 15; i += 1)
{
ini_write_real('Slot', string(i) , global.Slot[i]);
}

//count through global.Player and save the data

for(var i = 0 ; i <= 3; i += 1)
{
    ini_write_real('Player', string(i) , global.Player[i,1]);
}

//save room name and spawn location
ini_write_string('Spawn Location', 'RoomName' , roomname);
ini_write_real('Spawn Location', 'X1' , x1);
ini_write_real('Spawn Location', 'X2' , x2);
ini_write_real('Spawn Location', 'Y1' , y1);
ini_write_real('Spawn Location', 'Y2' , y2);


ini_close();
