var angle = argument0 - (floor(dir/360)*360); //gets the angle from 0-360
if angle > 90 and angle <= 270
{
image_xscale = -2;
}
else
{
image_xscale = 2;
}
sprite_index = asset_get_index(string(argument1) + string(argument2));
