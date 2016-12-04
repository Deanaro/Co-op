if hold !=0 // if player is holding an item
{
switch (dir)    // selects spawn coordinates depending on facing direction
        {
        case 0:
        {
            var spawnx = x;
            var spawny = y + 32 + 32;
            break;
        }
        case 1:
        {
            var spawnx = x;
            var spawny = y + 32 - 32;
            break;
        }
        case 2:
        {
            var spawnx = x + 32;
            var spawny = y + 32;
            break;
        }
        case 3:
        {
            var spawnx = x - 32;
            var spawny = y + 32;
            break;
        }
        default :
            var spawnx = x;
            var spawny = 64 -32;
            break;
        }


    scr_SpawnPU(hold, spawnx,spawny); //script for spawning power up
    hold = 0; // sets hold to 0 (empty);
}
