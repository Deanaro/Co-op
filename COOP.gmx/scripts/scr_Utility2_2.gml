// Small metal wall
//press space / A (xbox) to spawn a wall, press again to place
// cancel with B


Utility_index = 4;
if UCooldown !=0
{UCooldown -=1;}
if ButtonB = 1 and instance_exists(Placer) and Busy =  1// when Busy = 1, disable weapon script
    {Busy = 0;
    with Placer {instance_destroy()}} //destroy placer
if ButtonA = 1
{
    if Busy = 0
    {
        if UCooldown = 0
        {
            Placer = instance_create(x,y,obj_MetalWallPlacer) // creates a placer object
            var temp = id;
            with Placer
            {
                Large = 1;
                Target = temp;
            }
            Busy = 1;
        }
    }
    else // if the placer object already exists 
    {
        if (Placer).Placeable = 1   // if the placer is in a legal location create a wall instance in that location
        {
           var wall = instance_create ((Placer).x,(Placer).y,obj_MetalWall);
           with wall
           {
           sprite_index = asset_get_index("spr_MetalWall_" + string(other.dir))
           if other.dir <2
           {//add illigal terain to the pathfinding grid;
            scr_Path_AddWall(x,y+obj_Pathfinder.Cellsize);
            scr_Path_AddWall(x+obj_Pathfinder.Cellsize,y+obj_Pathfinder.Cellsize);
            scr_Path_AddWall(x+obj_Pathfinder.Cellsize*2,y+obj_Pathfinder.Cellsize);
           }
           else
           {//add illigal terain to the pathfinding grid;
            scr_Path_AddWall(x,y+obj_Pathfinder.Cellsize);
            scr_Path_AddWall(x,y+obj_Pathfinder.Cellsize*2);
            scr_Path_AddWall(x,y+obj_Pathfinder.Cellsize*3);
           }
           }
           with Placer
           {instance_destroy();}  // destroy the placer instance
           UCooldown = 60; //set cooldown (in frames)
           Busy = 0;
        }
    }
}
