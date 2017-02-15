///scr_Utility_Place(object,sprite,basesprite,xshift,yshift,cooldown,square)
//produces a placer object that can place the required object!
//press space / A (xbox) to spawn a wall, press again to place
//Cancel with B (xbox)
var Placed = noone;
UCD = argument5;
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
            Placer = instance_create(x,y,obj_Placer) // creates a placer object
            var temp = id;
            with Placer
            {
                x_shift = argument3;
                y_shift = argument4;
                square = argument6;
                Target = temp;
                sprite_index = argument1;
                sprite = argument2;
            }
            Busy = 1;
        }
    }
    else // if the placer object already exists 
    {
        if (Placer).Placeable = 1 // if the placer is in a legal location create a wall instance in that location
        {
           Placed = instance_create ((Placer).x,(Placer).y,argument0);
           with Placed
           {
            if !argument6
            {
            sprite_index = other.Placer.sprite_index;
            }
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
return Placed;
