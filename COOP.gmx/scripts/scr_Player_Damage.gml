//damages the player, removing a random powerup
var life = 4;
for (var i = 0; i <4; i++)
    {
    if global.Slot[4*Player_num + i] = 0 or global.Slot[4*Player_num + i] = 11
    {life --;}
    }
if life = 0
{
//player is dead
}
else
    {
    var count = 0;
    var rand = irandom(life-1)+1;
    for (var i = 0; i <4; i++)
        {
        if global.Slot[4*Player_num + i] != 0 and global.Slot[4*Player_num + i] != 11
            {
            count ++;
            if count = rand
                {
                global.Slot[4*Player_num + i] = 0;
                break;
                }
            }
        }
    }
    //sets vibration
if global.Player[Player_num,1] != 4
{gamepad_set_vibration(Player_num, 1, 1);
alarm[2] = 10;}
scr_ToolUpdate(Player_num);
