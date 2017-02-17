//APPLY STATUS EFFECT
//use this to give a player a status effect
//scr_status_give(playerID,Status_index,duration);

            var done =0;
            for (var i=0;i<5;i++)
            {
                if done = 0 and argument0.status_list[i,0] = argument1      //will run through the status list to see if the status already exists, if so extend it, otherwise go to next for loop
                {
                    if argument0.status_list[i,1] < argument2
                    {
                        argument0.status_list[i,0] = argument1; //sets status
                        argument0.status_list[i,1] = argument2; //sets timer
                    }
                    done = 1; //if it exists, set done to 1
                }
            }
            if done = 0
            {
                for (var i=0;i<5;i++)
                {
                    if done = 0 and argument0.status_list[i,0] = 0      //finds the lowest empty slot inthe aray and places the buff there.
                    {
                        argument0.status_list[i,0] = argument1; //sets status
                        argument0.status_list[i,1] = argument2; //sets timer
                        done = 1;
                    }
                }    
            }
