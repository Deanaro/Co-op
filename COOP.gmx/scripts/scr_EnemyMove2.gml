// TEMPORARY MOVEMENT/ COLLISION AND ANIMATION FOR ENEMY     
        var movex = h_move * spd*6;
        var movey = v_move * spd*6;
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
        sprite_index = spr_Salamander;
        image_speed = 0;
    
    
    
