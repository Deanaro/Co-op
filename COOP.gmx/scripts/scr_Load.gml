//this script loads the save data in save.ini to restore the state of players when the game was last saved.

// it requires no arguments


//check save file exists
if (file_exists("save.ini")) 
{
//open save file
ini_open("save.ini");

//count through global.slot and load the data

for(var i = 0 ; i <= 15; i += 1)
{
global.Slot[i] = ini_read_real('Slot', string(i) , 0 );
}

//count through global.Player and load the data 

var counter = 0; 

for(var i = 0 ; i <= 3; i += 1)
{
    global.Player[i,1] = ini_read_real('Player', string(i) , -1);
}



//load in spawn location to loval variables
SpawnRoom = ini_read_string('Spawn Location', 'RoomName' , 'Error No Room Loaded');
SpawnX1 = ini_read_real('Spawn Location', 'X1' , 0);
SpawnX2 = ini_read_real('Spawn Location', 'X2' , 0);
SpawnY1 = ini_read_real('Spawn Location', 'Y1' , 0);
SpawnY2 = ini_read_real('Spawn Location', 'Y2' , 0);


//close save file
ini_close();
}
