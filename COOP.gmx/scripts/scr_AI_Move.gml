// movement and collision handler
if move !=0
{
    //turns the variable dir to vectory movex and movey
    movex = round(cos(dir*pi/180) * spd);
    movey = round(-sin(dir*pi/180) * spd);
    
    //if !place_meeting(x +movex, y, obj_Enemy)                     COLLISION WITH OTHER UNITS!!!!!!!!!!
    {
    if !place_meeting(x + movex, y, obj_NonUnitSolid) and x + movex < room_width and x+ movex > 0 and !place_meeting(x +movex, y, obj_Player) 
    {
        x += movex;
    }
    // x collision
    else 
    {   
        if place_meeting(x + movex, y, obj_NonUnitSolid)
        {
        while !place_meeting(x + sign(movex), y, obj_NonUnitSolid)
        {
            x += sign(movex);
        }
        movex = 0;
    }}
    }
    /*else if !place_meeting(x + movex, y, obj_solid) and x + movex < room_width and x+ movex > 0 and !place_meeting(x +movex, y, obj_Player) 
    {
        var unit = instance_place(x+movex,y,obj_Enemy);
        var vector = point_direction(x,y,unit.x,unit.y);
        with unit
        {
             if !place_meeting(x + 2*round(cos(vector*pi/180)), y, obj_solid) and x + 2*round(cos(vector*pi/180)) < room_width and x+ 2*round(cos(vector*pi/180)) > 0 and !place_meeting(x +2*round(cos(vector*pi/180)), y, obj_Player)
           { x += 2*round(cos(vector*pi/180));}
           if !place_meeting(x, y + 2*round(-sin(vector*pi/180)), obj_solid)  and y + 2*round(-sin(vector*pi/180)) < room_height - 48 and y+ 2*round(-sin(vector*pi/180)) > 0 and !place_meeting(x, y + 2*round(-sin(vector*pi/180)), obj_Player)
            {y += 2*round(-sin(vector*pi/180));}
        }
        for (var i =0; i<floor(abs(movex));i++)
        {
            if !place_meeting(x+sign(movex),y,unit)
            {x+=sign(movex);}
        }
    }*/
    
    // y movepent
   //if !place_meeting(x, y + movey, obj_Enemy)                                             COLLISION WITH OTHER UNITS!!!!!!!!!!!!
    {
    if !place_meeting(x, y + movey, obj_NonUnitSolid)  and y + movey < room_height - 48 and y+ movey > 0 and !place_meeting(x, y + movey, obj_Player) 
    {
        y += movey;
    }
    //y collision
    else 
    {
        if place_meeting(x, y+movey, obj_NonUnitSolid)
        {
        while !place_meeting(x , y + sign(movey), obj_NonUnitSolid)    
        {
            y += sign(movey);
        }
        movey = 0;
        }
    }
    }
    /*else if !place_meeting(x, y + movey, obj_solid)  and y + movey < room_height - 48 and y+ movey > 0 and !place_meeting(x, y + movey, obj_Player)
    {
        var unit = instance_place(x,y+movey,obj_Enemy);
        var vector = point_direction(x,y,unit.x,unit.y);
        with unit
        {
            if !place_meeting(x + 2*round(cos(vector*pi/180)), y, obj_solid) and x + 2*round(cos(vector*pi/180)) < room_width and x+ 2*round(cos(vector*pi/180)) > 0 and !place_meeting(x +2*round(cos(vector*pi/180)), y, obj_Player)
           { x += 2*round(cos(vector*pi/180));}
           if !place_meeting(x, y + 2*round(-sin(vector*pi/180)), obj_solid)  and y + 2*round(-sin(vector*pi/180)) < room_height - 48 and y+ 2*round(-sin(vector*pi/180)) > 0 and !place_meeting(x, y + 2*round(-sin(vector*pi/180)), obj_Player)
            {y += 2*round(-sin(vector*pi/180));}
        }
        for (var i =0; i<floor(abs(movey));i++)
        {
            if !place_meeting(x,y+sign(movey),unit)
            {y+=sign(movey);}
        }
    }*/
    }
