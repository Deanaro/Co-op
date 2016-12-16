//this script loads the last save file and respawns the players at the last save point.
// Lachlan I changed your script a little because I made a new room change script
//load last save
script_execute(scr_Load);
for (var i = 0; i<4; i++)
{
    with global.Player[i,0]
   { hold = 0;}
}
scr_RoomChange(SpawnX1,SpawnY1,SpawnX2,SpawnY2,SpawnRoom);


/*
//changes the current room to the one in the save file
var temproom = asset_get_index(global.SpawnRoom);

room_goto(temproom);

//run the player spawn script with global variables
for (var i = 0; i <4; i++)
{

   if global.Player[i,1] != -1
   {

    script_execute (scr_SpawnPlayer, -1 ,global.SpawnX1,global.SpawnY1,global.SpawnX2,global.SpawnY2, i)

   }

}
