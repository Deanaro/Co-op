if (chatter_focussed_passage_array[0,0] != "null") {
    chatter_dialogue_array[chatter_focused_dialogue_num,1] = chatter_focussed_passage_array;
    scr_Chatter_Clear_Temp_Arrays();
    //scr_Console_Log_Write("!Chatter: dialogue completed and set", "reg"); //DEBUG
}

