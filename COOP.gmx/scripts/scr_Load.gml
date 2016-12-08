//this script loads the save data in save.ini to restore the state of players when the game was last saved.

// it requires no arguments


//declare global vars for spawning
globalvar SpawnRoom;
globalvar SpawnX1;
globalvar SpawnX2;
globalvar SpawnY1;
globalvar SpawnY2;


//check save file exists
if (file_exists("save.ini")) 
{
//open save file
ini_open("save.ini");

//count through global.slot and load the data

for(x = 0 ; x <= 15; x += 1)
{
global.Slot[x] = ini_read_real('Slot', string(x) , 0 );
}

//count through global.Player and load the data

var counter = 0; 

for(x = 0 ; x <= 3; x += 1)
{
   for(y = 0 ; y <= 2 ; y += 1)
   {
    global.Player[x,y] = ini_read_real('Player', string(counter) , 0 );
    counter += 1;
   }
}



//load in spawn location to global variables
global.SpawnRoom = ini_read_string('Spawn Location', 'RoomName' , 'Error No Room Loaded');
global.SpawnX1 = ini_read_real('Spawn Location', 'X1' , 0);
global.SpawnX2 = ini_read_real('Spawn Location', 'X2' , 0);
global.SpawnY1 = ini_read_real('Spawn Location', 'Y1' , 0);
global.SpawnY2 = ini_read_real('Spawn Location', 'Y2' , 0);


//close save file
ini_close();
}
