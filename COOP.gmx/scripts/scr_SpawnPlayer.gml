var x1 = argument1;
var y1 = argument2;
var x2 = argument3;
var y2 = argument4;


            /* spawnx = global.view_width/3 + random(global.view_width/3);
             spawny = global.view_width/3 + random(global.view_height/3) - 78; */
             
             spawnx = x1 + random(x2 - x1);
             spawny = y1 + random(y2 - y1)-48;
      // Create a player object and assign it a argument0 number
        global.Player[argument5, 0] = instance_create(spawnx, spawny, obj_Player); //sets the instance id to column 1
        if argument0 != -2
            {global.Player[argument5, 1] = argument0;} //sets the pad to column 2
            with global.Player[argument5, 0]    
            {
                Player_num = argument5;
                while (place_meeting(x,y,obj_solid) )
                {
                x = x1 + random(x2 - x1);
                y = y1 + random(y2 - y1)-48;
                }
                script_execute(scr_ToolUpdate);
                //input type
                if global.Player[argument5,1] = 4
                {InputType = "scr_InputKB";}
                else
                { InputType = "scr_InputGP";}

            }
