if global.MENU_CONTROLLER !=-1
            {
                if scr_CheckForPad(global.MENU_CONTROLLER)<0
                    {
                        var PlayerSlot = abs(scr_CheckForPad(global.MENU_CONTROLLER) + 1)
                        with global.Player[PlayerSlot,0]
                        {instance_destroy();}
                        global.Player[PlayerSlot,0] = noone;
                        global.Player[PlayerSlot,1] = -1;
                    }
            }
