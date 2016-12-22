// Small metal wall
//press space / A (xbox) to spawn a wall, press again to place
//Cancel with B (xbox)

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
            var centerx = floor(x/obj_Pathfinder.Cellsize);
            var centery = floor(Centery/obj_Pathfinder.Cellsize)-1;
            switch dir
                {
                case 0:
                    x1 = (centerx )*obj_Pathfinder.Cellsize;
                    y1 = (centery + 1)*obj_Pathfinder.Cellsize;
                    break;
                case 1:
                    x1 = (centerx )*obj_Pathfinder.Cellsize;
                    y1 = (centery - 1)*obj_Pathfinder.Cellsize;
                    break;
                case 2:
                    x1 = (centerx + 1)*obj_Pathfinder.Cellsize;
                    y1 = (centery )*obj_Pathfinder.Cellsize;
                    break;
                case 3:
                    x1 = (centerx - 1)*obj_Pathfinder.Cellsize;
                    y1 = (centery )*obj_Pathfinder.Cellsize;
                    
                    break;
                }
           var wall = instance_create (x1,y1,obj_MetalWall);
           with wall
           {
            //add illigal terain to the pathfinding grid;
            scr_Path_AddWall(x,y+obj_Pathfinder.Cellsize);
          }
           with Placer
           {instance_destroy();} //destroys the placer instance
           UCooldown = 60; //sets cooldown
           Busy = 0;
        }
    }
}
