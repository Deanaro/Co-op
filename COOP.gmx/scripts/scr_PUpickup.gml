
if (instance_exists(obj_PU))
{ 

    if ButtonX = true   // X, Square
    {
    var hreach, vreach;
        switch (dir)
        {
        case 0: {hreach = 0; vreach = 24; break;}
        case 1: {hreach = 0; vreach = -24; break;}
        case 2: {hreach = 24; vreach = 0; break;}
        case 3: {hreach = -24; vreach = 0; break;}
        }
///////!!!!!!!!!!!!!!!!! previous version
/*var near = instance_nearest(x + hreach,y+ vreach + sprite_height/2,obj_PU) // returns nearest instance
if place_meeting(x + hreach,y + vreach ,near)                         // if colliding with it
{
        if hold !=0     // if already holding a PU, drop it
        
            
        {scr_SpawnPU(hold, near.x, near.y);}
        hold = near.PU_Index;        // retrieves the PU number
        with near   
        {instance_destroy();}       // destroys the PU that was picked up
    }
}
}*/
var near = instance_nearest(x+sign(hreach),y+ 64 +sign(vreach),obj_PU) // returns nearest instance
if place_meeting(x + hreach,y + vreach ,near)                         // if colliding with it
{
        if hold !=0     // if already holding a PU, drop it
        
            
        {scr_SpawnPU(hold, near.x, near.y);}
        hold = near.PU_Index;        // retrieves the PU number
        with near   
        {instance_destroy();}       // destroys the PU that was picked up
    }
}
}
