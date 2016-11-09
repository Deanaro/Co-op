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
    if (dialogue_found != -1) {
        chatter_focused_dialogue_num = dialogue_num;
    } else { 
    /* If dialogue does not already exist in array; create and focus */
        chatter_dialogue_array[dialogue_count+1,0] = chatter_dialogue_set_name;
        chatter_focused_dialogue_num = dialogue_count+1;
    }
} else {
    chatter_focused_dialogue_num = -1;
}
