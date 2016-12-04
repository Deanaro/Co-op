chatter_dialogue_set_name = argument[0]

if (chatter_dialogue_set_name != "") {
    var dialogue_count = array_height_2d(chatter_dialogue_array); //get number of dialogue's tracked
    var dialogue_num = -1;
    /* Check if dialogue already exists in the chatter array */
    for (i = 0; i < dialogue_count; i++) {
        if (chatter_dialogue_array[i,0] == chatter_dialogue_set_name) {
            dialogue_num = i;
        }
    }
    /* If dialogue already exists in array; focus */
    if (dialogue_num != -1) {
        chatter_focused_dialogue_num = dialogue_num;
        scr_Console_Log_Write("!Chatter: Dialogue already exists in room file","error");
    } else { 
    /* If dialogue does not already exist in array; create and focus */
        chatter_dialogue_array[dialogue_count+1,0] = chatter_dialogue_set_name;
        chatter_focused_dialogue_num = dialogue_count+1;
        scr_Console_Log_Write("!Chatter: Dialogue Found: " + chatter_dialogue_set_name,"reg")
    }
} else {
    chatter_focused_dialogue_num = -1;
}
