//creates a projectile
//scr_Weapon_Projectile(Object,Aim Shift(degrees),Spread(degrees));
var tempangle = angle + argument1 + (irandom(argument2) - argument2/2);
xangle = cos(tempangle*(pi/180));
yangle = -sin(tempangle*(pi/180));
var Fireball = instance_create(x + xangle*24,y + yangle*24 + sprite_height/2, argument0);
with Fireball
{
x_move = other.xangle;
y_move = other.yangle;
image_angle = point_direction(0,0,x_move,y_move);
}
