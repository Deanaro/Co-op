if ButtonY = 1 and hold !=0
{
switch (dir)
        {
        case 0:
        {
            var spawnx = x;
            var spawny = y + 64 + 48;
            break;
        }
        case 1:
        {
            var spawnx = x;
            var spawny = y + 64 - 48;
            break;
        }
        case 2:
        {
            var spawnx = x + 48;
            var spawny = y + 64;
            break;
        }
        case 3:
        {
            var spawnx = x - 48;
            var spawny = y + 64;
            break;
        }
        default :
            var spawnx = x;
            var spawny = 64 + 48;
            break;
        }


    scr_SpawnPU(hold, spawnx,spawny);
    hold = 0;
}
