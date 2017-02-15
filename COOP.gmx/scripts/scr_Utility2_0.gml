//Small metal wall
//press space / A (xbox) to spawn a wall, press again to place
//Cancel with B (xbox)

Utility_index = 3;
Placed = scr_Utility_Placer(obj_MetalWall,spr_MetalWall_S,"spr_MetalWall",0,-1,90,1);
if Placed !=noone
{
with Placed
{sprite_index = spr_MetalWall_S;
}
}
