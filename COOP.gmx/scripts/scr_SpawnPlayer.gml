//spawns the a player in a non solid location
//scr_SpawnPlayer(pad_index,x1,y1,x2,y2,Player_num)
var x1 = argument1;
var y1 = argument2;
var x2 = argument3;
var y2 = argument4;
//argument 0 = player num


            /* spawnx = global.view_width/3 + random(global.view_width/3);
             spawny = global.view_width/3 + random(global.view_height/3) - 78; */
             
             spawnx = x1 + irandom(x2 - x1-1);
             spawny = y1 + irandom(y2 - y1-1)-(24);
      // Create a player object and assign it a argument0 number
        if instance_exists(global.Player[argument5, 0])
        with global.Player[argument5, 0]
        {instance_destroy();}
        global.Player[argument5, 0] = instance_create(spawnx, spawny, obj_Player); //sets the instance id to column 1
        if argument0 != -2
            {global.Player[argument5, 1] = argument0;} //sets the pad to column 2
            with global.Player[argument5, 0]    
            {
                Player_num = argument5;
                while place_meeting(x,y,obj_solid)
                or x < 0
                or x > room_width
                or bbox_bottom - 16 < 0
                or bbox_bottom > room_height
                {
                x = x1 + irandom(x2 - x1-1);
                y = y1 + irandom(y2 - y1-1)-24;
                }
                scr_ToolUpdate(argument5);
                //input type
                if global.Player[argument5,1] = 4
                {InputType = asset_get_index("scr_Player_InputKB");}
                else
                {InputType = asset_get_index("scr_Player_InputGP");}

            }
