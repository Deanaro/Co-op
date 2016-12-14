//scr_AI_Animation(base sprite name(not containing animation letter))
//argument0 = base sprite name (eg. "spr_sprite") !!!!notice without the animation Letter
//sets the correct sprite and direction.
//sprite faces in direction of motion unless it is withing close range to player.
//
if instance_exists(obj_Player) and point_distance(x,bbox_bottom-16,Targetx,Targety) < 500 and  Alert = 1
{face = point_direction(x,bbox_bottom-16,Targetx,Targety)
angle =  face;}
else
{angle = dir mod 361; }
if angle > 90 and angle <= 270
{
image_xscale = -2;
}
else
{
image_xscale = 2;
}
sprite_index = asset_get_index(string(argument0) + string(anim));
