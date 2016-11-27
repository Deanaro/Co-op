var temp_room = argument[0]; //stores the passed room name

chatter_room_file = file_text_open_read(working_directory + "\" + temp_room + ".txt"); //attempts to open the rooms appropriate chatter file. working_directory targets the file dir for cross-platform compatability

//check if chatter file was found for the room and outputs to the console
if (chatter_room_file != -1) {
    scr_Console_Log_Write("!Chatter: Room Opened - " + temp_room, "reg");
    chatter_file_opened = true;
    var chatter_working_line = "";
    var delimiter_pos = 0;
    var inidicator_pos = 0;
    var line_num = 0;
    var line_item = "";
    var column_num = 0;
    var chatter_line_num = 0;
    while(!file_text_eof(chatter_room_file)) { //whilst not at end of file
        chatter_working_line = file_text_readln(chatter_room_file); //get the current line
        column_num = 0;
        /* Check for and process DIALOGUE name line - indicating new dialogue */
        indicator_pos = string_pos(chatter_dialogue_indicator,chatter_working_line);
        if (indicator_pos != 0) { //if current line is a dialogue line
            scr_Chatter_Passage_Commit(); //Commit any existing dialogue passage array
            chatter_working_line = string_delete(chatter_working_line, indicator_pos, indicator_pos+string_length(chatter_dialogue_indicator));
            delimiter_pos = string_pos(chatter_file_delimiter, chatter_working_line); //gets the position of the next delimiter
            if (delimiter_pos != 0) { //skip item if no delimiter found
                chatter_working_line = string_delete(chatter_working_line, delimiter_pos, delimiter_pos+1); //remove the delimitter from the string
                scr_Chatter_Dialogue_Set(chatter_working_line); //Pass dialogue name to set script
                chatter_line_num = 0;
            }
        } else {
        /* Process a PASSAGE line */
            while(column_num != chatter_file_columns) { //whilst columns parsed not at limit
                delimiter_pos = string_pos(chatter_file_delimiter, chatter_working_line); //gets the position of the next delimiter
                if (delimiter_pos != 0) { //skip column if no delimiter found
                    line_item = string_copy(chatter_working_line, 1, delimiter_pos-1); //gets the current column item
                    chatter_working_line = string_delete(chatter_working_line, 1, delimiter_pos); //delete the read column from the working line
                    scr_Chatter_Passage_Item_Set(chatter_line_num, column_num, line_item);
                    //chatter_array[chatter_line_num,column_num] = line_item; //append line_item to appropriate array index
                    scr_Console_Log_Write("!Chatter: column passed", "reg");
                } else {
                    scr_Chatter_Passage_Item_Set(chatter_line_num, column_num, "Chatter column error @ line:" + string(chatter_line_num+1) + " of File: " + temp_room + ".txt");
                    //chatter_array[chatter_line_num,column_num] = "Chatter column error @ line:" + string(chatter_line_num+1) + " of File: " + temp_room + ".txt";
                    scr_Console_Log_Write("!Chatter: column failed", "error");
                }
                column_num++; //iterate column number
                
            }
            scr_Console_Log_Write("!Chatter: line completed", "reg");
            chatter_line_num++; //iterate line number
        }
    }
    file_text_close(chatter_room_file);    
    scr_Console_Log_Write("!Chatter: loaded and file closed", "reg");
} else {
    scr_Console_Log_Write("!Chatter: Could not find - " + temp_room, "reg");
    chatter_file_opened = false;
}


