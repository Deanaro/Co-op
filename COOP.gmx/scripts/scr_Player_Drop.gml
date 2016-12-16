// if the player is holding an item and presses interact button, drops the item
// NO ARGUMENTS
// run only from a obj_Player.

if hold !=0 // if player is holding an item
{
switch (dir)    // selects spawn coordinates depending on facing direction
        {
        case 0:
        {
            var spawnx = x;
            var spawny = y + 32;
            break;
        }
        case 1:
        {
            var spawnx = x;
            var spawny = y;
            break;
        }
        case 2:
        {
            var spawnx = x + 16;
            var spawny = y + 16;
            break;
        }
        case 3:
        {
            var spawnx = x - 16;
            var spawny = y + 16;
            break;
        }
        default :
            var spawnx = x;
            var spawny = 64 -16;
            break;
        }


    scr_SpawnPU(hold, spawnx,spawny); //script for spawning power up
    hold = 0; // sets hold to 0 (empty);
}
