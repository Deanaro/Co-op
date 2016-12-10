for (var i = 0; i<4; i++)
{
    if global.Player[i,0] != noone
    {
    
    with global.Player[i, 0]    
            {
                scr_ToolUpdate(i);
                x = global.x1 + random(global.x2 - global.x1);
                y = global.y1 + random(global.y2 - global.y1)-48;
                while (place_meeting(x,y,obj_solid) )
                {
                x = global.x1 + random(global.x2 - global.x1);
                y = global.y1 + random(global.y2 - global.y1)-48;
                }
            }
    }

}
