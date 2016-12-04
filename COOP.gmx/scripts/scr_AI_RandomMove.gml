// WIP gets a random direction every 20-60 steps
spd = 2;
if changedir !=0
{changedir --;}

if changedir = 0
{
    changedir = 20 + round(random(40));
    move = round(random(3) - 1); //if move = 0, instance will be stationary
    dir = random(360);
}
