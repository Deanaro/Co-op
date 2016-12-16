//scr_AI_Animation(base sprite name(not containing animation letter))
//argument0 = base sprite name (eg. "spr_sprite") !!!!notice without the animation Letter
//sets the correct sprite and direction.
//sprite faces in direction of motion unless it is withing close range to player.
//
if sprite_index != asset_get_index(string(argument0) + "A") or Busy = 0
{
if instance_exists(obj_Player) and point_distance(x,Centery,Targetx,Targety) < 500 and  Alert = 1
{face = point_direction(x,Centery,Targetx,Targety)
angle =  face;}
else
{angle = dir mod 360; }


if angle < 90
{
    facing = 0;
    image_xscale = global.Scale;
}
else if angle >=90 and angle < 180
{
    facing = 1;
    image_xscale = -global.Scale;
}
else if angle >=180 and angle < 270
{
    facing = 2;
    image_xscale = -global.Scale;
}
else if angle >=270
{
    facing = 3
    image_xscale = global.Scale;
}
sprite_index = asset_get_index(string(argument0) + string(anim));
}
