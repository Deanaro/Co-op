//scr_RoomChange(x1,y1,x2,y2,room)
//moves the players to a specified room and sets the spawn box
//usage: scr_RoomChange(0,0,96,96,rm_Test4)
//result: set spawn coordinates to top left corner of the room and moves to rm_Test4
//note: works if the spawn location is in the same room (if wanting to spawn in a different location in the same room

        global.x1 = argument0;
        global.y1 = argument1;
        global.x2 = argument2;
        global.y2 = argument3;
        if room_get_name(room) != argument4
        {room_goto(asset_get_index(argument4))} //moves room
        else
        {
        for (i = 0; i <4; i++)
            {
                scr_MovePlayer();
            }
        }
    

