spd = 2;
if changedir !=0
{changedir --;}

if changedir = 0
{
    changedir = 20 + round(random(40));
    move = round(random(2));
    dir = random(360);
}
