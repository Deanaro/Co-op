

    if move =1 and abs(v_move) + abs(h_move) > 0.3 
    {
        
        var movex = round(h_move * spd);
        var movey = round(v_move * spd);
        
        if !place_meeting(x + movex, y, obj_solid) and !place_meeting(x + movex, y, obj_Enemy) and (x + movex <= room_width) and (x+ movex >= 0)
        {
            x += movex;
        }
        // x collision
        else 
        {   
            if place_meeting(x + movex, y, obj_solid)
            {
            while !place_meeting(x + sign(movex), y, obj_solid)
            {
                x += sign(movex);
            }
            movex = 0;
            move = 0;
            }
        }
        // y movepent
        if !place_meeting(x, y + movey, obj_solid) and !place_meeting(x, y + movey, obj_Enemy) and y + movey < room_height and y+ 66> 0
        {
            y += movey;
        }
        //yx collision
        else 
        {
            if place_meeting(x, y+movey, obj_solid)
            {
            while !place_meeting(x , y + sign(movey), obj_solid)
            {
                y += sign(movey);
            }
            movey = 0;
            move = 0;
            }
        }
        //Animation handling *****************************
        sprite_index = spr_SalamanderW; 
        image_speed = 0.2;
        if h_move > 0
        {image_xscale = -3;}
        else
        {image_xscale = 3;}
    }
    else
{
    sprite_index = spr_Salamander;
    image_speed = 0.1;
}

    
    

