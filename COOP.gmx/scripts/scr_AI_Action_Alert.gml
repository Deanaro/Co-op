//this script chooses and runs an action script for the enemy depending on range to target
//and randomness.


//changes action every so often
if ActionChange = 0
{
    ActionChange = 60 + irandom(60); // EVERY 60-120 FRAMES (1-2 SECONDS)
    RandomAction = irandom(10); //Generates a new number form 0-10
}
else {ActionChange --;}
///////////////////////////////////////


TargetDistance = point_distance(x,bbox_bottom - 16,Targetx,Targety); // distance to targer
///////////// ATTACK RANGE //////////////////////
if TargetDistance < Attack_Range //attack range
{
    if RandomAction <= 7 and Cooldown = 0 or TargetDistance < 30 and Cooldown = 0//70% chance
    {
        scr_AI_Attack(); //Attack
        exit;
    }
    else if RandomAction <=8 //30% chance
    {
        scr_AI_RandomMove(); //move randomly
    }
    else if RandomAction <=9 //30% chance
    {
       scr_AI_CircleMove(-1);//move randomly
    }
    else
    { 
        scr_AI_CircleMove(1);//move randomly
    }
}
///////////// CLOSE RANGE //////////////////////
else if TargetDistance < Not_Alert_Range//close range
{
    if RandomAction <= 6 //60% chance
    {
        scr_AI_Chase(); //Chases the player
    }
    else if RandomAction <= 7 //40% chance
    {
        scr_AI_CircleMove(-1); //move randomly
    }
    else if RandomAction <= 8 //40% chance
    {
        scr_AI_CircleMove(1); //move randomly
    }
    else if RandomAction <= 9
    {
        scr_AI_RandomMove(); //move randomly
    }
}
///////////// FAR //////////////////////////////
else if TargetDistance < Alert_Range // far
{
    if RandomAction <= 7 //50% chance
    {
        scr_AI_Chase(); //Chases the player
    }
    else if RandomAction <= 8 //50% chance
    {
        scr_AI_CircleMove(1); //move randomly
    }
    else if RandomAction <= 9 //50% chance
    {
        scr_AI_CircleMove(1); //move randomly
    }
    else
    {
        scr_AI_RandomMove(); //move randomly
    }
}
