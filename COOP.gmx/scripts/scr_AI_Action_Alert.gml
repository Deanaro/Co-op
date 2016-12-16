//action decision script for when Alert = true
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


TargetDistance = point_distance(x,Centery,Targetx,Targety); // distance to targer
///////////// ATTACK RANGE //////////////////////
if TargetDistance < Attack_Range //attack range
{
    if RandomAction <= 7 and Cooldown = 0 or TargetDistance < (3/4*Attack_Range) and Cooldown = 0//70% chance
    {
        scr_AI_Attack(6); //Attack
    }
    else if RandomAction <=10 
    {
        scr_AI_RandomMove(); 
    }
   /* else if RandomAction <=9 
    {
       scr_AI_CircleMove(1);
    }
    else
    { 
        scr_AI_CircleMove(1);
    }*/
}
///////////// CLOSE RANGE //////////////////////
else if TargetDistance < Not_Alert_Range//close range
{
    if RandomAction <= 5 //60% chance
    {
        scr_AI_Chase(); //Chases the player
    }
    else if RandomAction <= 6
    {
        scr_AI_RandomMove(); 
    }
    else if RandomAction <= 8
    {
        scr_AI_CircleMove(-0.2* (2+ RandomAction mod 2)); 
    }
    else
    {
        scr_AI_CircleMove(0.2* (2+ RandomAction mod 2));
    }
}
///////////// FAR //////////////////////////////
else if TargetDistance < Alert_Range // far
{
    if RandomAction <= 4 //50% chance
    {
        scr_AI_Chase(); //Chases the player
    }
    else if RandomAction <= 0 //50% chance
    {
        scr_AI_RandomMove(); //move randomly
    }
    else if RandomAction <= 7 //50% chance
    {
        scr_AI_CircleMove(-0.2* (2+ RandomAction mod 2)); //move randomly
    }
    else
    {
        scr_AI_CircleMove(0.2* (2+ RandomAction mod 2)); //move randomly
    }
}
