// runs every step to check if this enemy is alert
var Target = instance_nearest(x,y,obj_Player);
Targetx = Target.x;
Targety = Target.bbox_bottom -16;
if Alert = 0
{
    if point_distance(x,y,Target.x,Target.y) <Not_Alert_Range
    {Alert = 1;
    }
}
else if Alert = 1
{
    if point_distance(x,y,Target.x,Target.y) > Alert_Range
    {Alert = 0;}
}
