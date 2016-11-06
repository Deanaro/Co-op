for (i = 0; i < 4; i++)
    {
        if global.Player[i,0] != noone
            {global.Player[i,0] = -1;}
    }
    room_goto(argument0);
    
/* Change notes:
Updated global.Player reference to correct array index pointer (as 2D array)

WHAT IS THE PURPOSE OF THE ABOVE CHECK?!?
*/
