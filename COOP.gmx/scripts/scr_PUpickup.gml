
if (instance_exists(obj_PU))
{ 

    if ButtonX = true   // X, Square
    {
    var hreach, vreach;
        switch (dir)
        {
        case 0: {hreach = 0; vreach = 16; break;}
        case 1: {hreach = 0; vreach = -16; break;}
        case 2: {hreach = 16; vreach = 0; break;}
        case 3: {hreach = -16; vreach = 0; break;}
        }
var near = instance_nearest(x + hreach,y+ vreach + (collision_center),obj_PU) // returns nearest instance
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
