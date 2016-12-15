//runs every step to check if this enemy is alert
//sets -Targetx- and -Targety- to the nearest player coordinates if alert
//sets -Alert- = true or false
if instance_exists(obj_Player)
{
var Target = instance_nearest(x,y,obj_Player); // gets nearest player
Targetx = Target.x;
Targety = Target.bbox_bottom -16;
if Alert = 0 // if not alert
{
    if point_distance(x,Centery,Target.x,Target.y) <Not_Alert_Range //checks if player walks into range
    {
    Alert = 1;
    spd = AlertSPD;
    }
}
else if Alert = 1 //if alert
{
    if point_distance(x,Centery,Target.x,Target.y) > Alert_Range //checks if player walks out of range
    {
    Alert = 0;
    spd = NonAlertSPD;
    }
}
}
