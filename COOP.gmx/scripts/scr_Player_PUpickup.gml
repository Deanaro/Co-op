//picks up closest item infront of player if it is in range
// NO ARGUMENTS
/*
if ButtonX = true// X, Square

{ 

     if (instance_exists(obj_PU))  
    {
    var hreach, vreach; // sets the reach of the player depending on facing direction
        switch (dir)
        {
        case 0: {hreach = 0; vreach = 12; break;}
        case 1: {hreach = 0; vreach = -12; break;}
        case 2: {hreach = 12; vreach = 0; break;}
        case 3: {hreach = -12; vreach = 0; break;}
        }
var near = instance_nearest(x+sign(hreach),Centery + sign(vreach),obj_PU) // returns nearest instance
//if place_meeting(x + hreach,y + vreach ,near)                         // if colliding with it
if point_distance(x+sign(hreach),Centery + sign(vreach),near.x,near.y) <= 24
{
        if hold !=0     // if already holding a PU, drop it  
        {scr_SpawnPU(hold, near.x, near.y);}
        hold = near.PU_Index;        // retrieves the PU number
        with near   
        {instance_destroy();}       // destroys the PU that was picked up
}
else {scr_Player_Drop();}
}
else {scr_Player_Drop();}
}*/
