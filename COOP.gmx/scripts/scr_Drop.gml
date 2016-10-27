if ButtonY = 1 and hold !=0
{
switch (dir)
        {
        case 1:
        {
            var spawnx = x;
            var spawny = y + collision_center - 32;
            break;
        }
        case 0:
        {
            var spawnx = x;
            var spawny = y + collision_center + 32;
            break;
        }
        case 2:
        {
            var spawnx = x + 32;
            var spawny = y + collision_center;
            break;
        }
        case 3:
        {
            var spawnx = x - 32;
            var spawny = y + collision_center;
            break;
        }
        default :
            var spawnx = x;
            var spawny = collision_center + 32;
            break;
        }


    scr_SpawnPU(hold, spawnx,spawny);
    hold = 0;
}
