//scr_RoomChange(x1,y1,x2,y2,room)
/* Moves the players to a specified room and sets the spawn box
usage: scr_RoomChange(0,0,96,96,"rm_Test4")
result: set spawn coordinates to top left corner of the room and moves to rm_Test4
note: works if the spawn location is in the same room (if wanting to spawn in a different location in the same room*/
if ( argument_count >=4 ) { //if enough arguments are passed, then use that spawn location
    global.x1 = argument0;
    global.y1 = argument1;
    global.x2 = argument2;
    global.y2 = argument3;
} else { //else set defaults
    global.x1 = 50;
    global.y1 = 50;
    global.x2 = 200;
    global.y2 = 200;
}
        /*if room_get_name(room) != argument4
        {room_goto(asset_get_index(argument4))} //moves room
        else
        {
        for (i = 0; i <4; i++)
            {
                scr_MovePlayer();
            }
        }*/
    room_goto(asset_get_index(argument4))

