//sets movement direction (-dir-) to random between 0 and 359
//every 40-80 steps.
//also sets -move- to true or false, if move is false then the scr_AI_Move script
//wont run and the instance will remain stationary.
//NO ARGUMENTS.

if changedir !=0
{changedir --;}

if changedir = 0
{
    changedir = 40 + irandom(40);
    move = irandom(1); //if move = 0, instance will be stationary
    dir = irandom(359);
}
