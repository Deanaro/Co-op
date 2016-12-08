chatter_dialogue_set_name = argument[0]
scr_Console_Log_Write("!Chatter: RUNNING scr_Chatter_Dialogue_Set","error"); //DEBUG

if (chatter_dialogue_set_name != "") {
    var last_dialogue_num = array_height_2d(chatter_dialogue_array)-1; //get number of dialogue's tracked
    var dialogue_num = -1;
    var count = 0;
    /* Check if dialogue already exists in the chatter array */
    for (i = 0; i <= last_dialogue_num; i++) {
        count++;
        scr_Console_Log_Write("!Chatter: Checked dialogue rows: " + string(count),"ai");
        if (chatter_dialogue_array[i,0] != chatter_dialogue_set_name) {
            dialogue_num = i;
        }
    }
    /* If dialogue already exists in array; focus */
    if (dialogue_num == -1) {
        chatter_focused_dialogue_num = dialogue_num;
        scr_Console_Log_Write("!Chatter: Dialogue already exists in room file","error");
    } else { 
    /* If dialogue does not already exist in array; create and focus */
        chatter_dialogue_array[last_dialogue_num+1,0] = chatter_dialogue_set_name;
        chatter_focused_dialogue_num = last_dialogue_num+1;
        scr_Console_Log_Write("!Chatter: Dialogue Init: " + chatter_dialogue_set_name,"reg")
    }
} else {
    chatter_focused_dialogue_num = -1;
}
