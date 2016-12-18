//saves the global variables to a ini file and saves the current room and spawn area.

//requires no arguments

//get the current room and calculate a spawn location 

var roomname = room_get_name(room);

var x1 = x - 100;
var x2 = x + 100;
var y1 = Centery - 100;
var y2 = Centery + 100;
if x1 <0 {x1 =0;}
if x2 > room_width {x2 =0;}
if y1 <0 {y1 =0;}
if y2 > room_width {y2 =0;}

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
