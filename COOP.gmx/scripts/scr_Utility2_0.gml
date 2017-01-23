// Small metal wall
//press space / A (xbox) to spawn a wall, press again to place
//Cancel with B (xbox)
UCD = 90;
Utility_index = 3;
if UCooldown !=0
{UCooldown -=1;}
if ButtonB = 1 and instance_exists(Placer) and Busy =  1 // when Busy = 1, disable weapon script
    {Busy = 0;
    with Placer {instance_destroy()}}
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
                Large = 0;
                Target = temp;
            }
            Busy = 1;
        }
    }
    else // if the placer object already exists 
    {
        if (Placer).Placeable = 1 // if the placer is in a legal location create a wall instance in that location
        {
           var wall = instance_create ((Placer).x,(Placer).y,obj_MetalWall);
           with wall
           {
            //add illigal terain to the pathfinding grid;
            scr_Path_AddWall(x,y+obj_Pathfinder.Cellsize);
          }
           with Placer
           {instance_destroy();} //destroys the placer instance
           UCooldown = UCD; //sets cooldown
           Busy = 0;
        }
    }
}
