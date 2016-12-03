//this script chooses and runs an action script for the enemy depending on range to target
//and randomness.


//changes action every so often
if ActionChange = 0
{
    ActionChange = 60 + round(random(60)); // EVERY 60-120 FRAMS (1-2 SECONDS)
    RandomAction = round(random(9)); //Generates a new number form 0-9
}
else {ActionChange --;}
///////////////////////////////////////


var TargetDistance = point_distance(x,y,Targetx,Targety); // distance to targer
///////////// ATTACK RANGE //////////////////////
if TargetDistance < Attack_Range //attack range
{
    if RandomAction <= 6 and Cooldown = 0 //70% chance
    {
        scr_AI_RandomMove(); //move randomly, !!!!TO BE REPLACED WITH ATTACK!!!!!!!!!!!!!
    }
    else if RandomAction <=9 //30% chance
    {
        scr_AI_RandomMove();//move randomly
    }
    else
    {
        //scr_AI_Stall(); //CURRENTLY NO 3RD ACTION
    }
}
///////////// CLOSE RANGE //////////////////////
else if TargetDistance < Not_Alert_Range//close range
{
    if RandomAction <= 5 //60% chance
    {
        scr_AI_Chase(); //Chases the player
    }
    else if RandomAction <= 9 //40% chance
    {
        scr_AI_RandomMove(); //move randomly
    }
    else
    {
        //scr_AI_Stall(); //CURRENTLY NO 3RD ACTION
    }
}
///////////// FAR //////////////////////////////
else if TargetDistance < Alert_Range // far
{
    if RandomAction <= 4 //50% chance
    {
        scr_AI_Chase(); //Chases the player
    }
    else if RandomAction <= 9 //50% chance
    {
        scr_AI_RandomMove(); //move randomly
    }
    else
    {
        //scr_AI_Stall(); //CURRENTLY NO 3RD ACTION
    }
}
