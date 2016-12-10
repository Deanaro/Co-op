if point_distance(x,bbox_bottom-16,Targetx,Targety) < 500 and  Alert = 1
{face = point_direction(x,bbox_bottom-16,Targetx,Targety)
angle =  face;}
else
{angle = argument0 - (floor(argument0/360)*360); }
if angle > 90 and angle <= 270
{
image_xscale = -2;
}
else
{
image_xscale = 2;
}
sprite_index = asset_get_index(string(argument1) + string(argument2));
