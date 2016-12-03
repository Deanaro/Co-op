//changes event every so often
if ActionChange = 0
{
    ActionChange = 60 + round(random(60));
    RandomAction = round(random(10));
}
else {ActionChange --;}
///////////////////////////////////////


var TargetDistance = point_distance(x,y,Targetx,Targety); // distance to targer
///////////// ATTACK RANGE //////////////////////
if TargetDistance < Attack_Range //attack range
{
    if RandomAction <= 7 and Cooldown = 0
    {
        scr_AI_RandomMove();
    }
    else if RandomAction <=10
    {
        scr_AI_RandomMove();
    }
    else
    {
        //scr_AI_Stall();
    }
}
///////////// CLOSE RANGE //////////////////////
else if TargetDistance < Not_Alert_Range//close range
{
    if RandomAction <= 6
    {
        scr_AI_Chase();
    }
    else if RandomAction <= 10
    {
        scr_AI_RandomMove();
    }
    else
    {
        //scr_AI_Stall();
    }
}
///////////// FAR //////////////////////////////
else if TargetDistance < Alert_Range // far
{
    if RandomAction <= 4
    {
        scr_AI_Chase();
    }
    else if RandomAction <= 10
    {
        scr_AI_RandomMove();
    }
    else
    {
        //scr_AI_Stall();
    }
}
