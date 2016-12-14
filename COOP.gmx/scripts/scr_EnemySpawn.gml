//spawns a group of enemies in a location
//scr_EnemySpawn(x1,y1,maxspawn,object)

var num = irandom(argument2-1) +1;
for (var i = 0; i<num; i++)
{
    var inst = instance_create(argument0-128 + irandom(256),argument1-128 + irandom(256)-sprite_height/2,argument3);
    with inst
    {
    while (place_meeting(inst.x,inst.y,obj_solid) )
                {
                x = argument0-128 + irandom(256);
                y = argument1-128 + irandom(256)-sprite_height/2;
                }
    }
}
