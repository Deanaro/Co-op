var chatter_room_name = argument[0]; //stores the passed room name
var temp_room = "" + working_directory + "\Chatter_Files\" + chatter_room_name + ".txt"; //creates full chatter file path

var dialogue_found = 0; //DEBUG TEMPT VAR

if (file_exists(temp_room)){ //checks if chatter file exists
chatter_room_file = file_text_open_read(temp_room); //attempts to open the rooms appropriate chatter file. working_directory targets the file dir for cross-platform compatability
} else {
    chatter_room_file = ""; //no chatter room found
}
//check if chatter file was found for the room and outputs to the console
if (chatter_room_file != "") {
    scr_Console_Log_Write("!Chatter: Room Initialized - " + chatter_room_name, "reg");
    chatter_file_opened = true;
    var chatter_working_line = "";
    var delimiter_pos = 0;
    var inidicator_pos = 0;
    var line_num = 0;
    var line_item = "";
    var column_num = 0;
    var dialogue_line_num = 0;
    var line_ind = "null";
    while(!file_text_eof(chatter_room_file)) { //whilst not at end of file
        chatter_working_line = file_text_readln(chatter_room_file); //get the current line
        delimiter_pos = 0;
        inidicator_pos = 0;
        line_item = "";
        line_ind = "null";
        /* Check for and process DIALOGUE name line - indicating new dialogue */
        //indicator_pos = string_pos(chatter_dialogue_indicator,chatter_working_line);
        //if (indicator_pos != 0) { //if current line is a dialogue line
        line_ind = string_copy(chatter_working_line,1,string_length(chatter_dialogue_indicator));
        show_debug_message("!Chatter: Chatter Line_ind - " + string(line_ind)); //DEBUG
        if (line_ind == chatter_dialogue_indicator) {
            dialogue_found++;
            scr_Chatter_Passage_Commit(); //Commit any existing dialogue passage array
            chatter_working_line = string_delete(chatter_working_line, 1, string_length(chatter_dialogue_indicator)); //remove the dialogue indicator from the working line
            scr_Chatter_Dialogue_Set(chatter_working_line); //Pass dialogue name to set script
            dialogue_line_num = 0;
        } else if (string_length(chatter_working_line) == 2) {
        //working line is completely empty, so do nothing and skip to next line
        } else {
        /* Process a PASSAGE line */
            while(column_num != chatter_file_columns) { //whilst columns parsed not at limit
                delimiter_pos = string_pos(chatter_file_delimiter, chatter_working_line); //gets the position of the next delimiter
                if (delimiter_pos != 0) { //skip column if no delimiter found
                    scr_Console_Log_Write("!Chatter: Chatter Item Delimiter Pos - " + string(delimiter_pos), "ai"); //DEBUG
                    line_item = string_copy(chatter_working_line, 1, delimiter_pos-1); //gets the current column item
                    scr_Console_Log_Write("!Chatter: Chatter line item - " + string(line_item), "ai"); //DEBUG
                    chatter_working_line = string_delete(chatter_working_line, 1, delimiter_pos); //delete the read column from the working line
                    scr_Chatter_Passage_Item_Set(dialogue_line_num, column_num, line_item);
                    //chatter_array[dialogue_line_num,column_num] = line_item; //append line_item to appropriate array index
                    scr_Console_Log_Write("!Chatter: column passed", "reg");
                } else {
                    //scr_Chatter_Passage_Item_Set(dialogue_line_num, column_num, "Chatter column error @ line:" + string(dialogue_line_num+1) + " of File: " + temp_room + ".txt"); //DEBUG extra line data
                    scr_Chatter_Passage_Item_Set(dialogue_line_num, column_num, chatter_null_entry);
                    //chatter_array[dialogue_line_num,column_num] = "Chatter column error @ line:" + string(dialogue_line_num+1) + " of File: " + temp_room + ".txt";
                    scr_Console_Log_Write("!Chatter: empty passage column", "error");
                }
                column_num++; //iterate column number
                
            }
            scr_Console_Log_Write("!Chatter: line completed", "reg");
            column_num = 0; // reset column number
            dialogue_line_num++; //iterate dialogue line number
        }
    }
    scr_Chatter_Passage_Commit();
    file_text_close(chatter_room_file);    
    scr_Console_Log_Write("!Chatter: loaded and file closed", "reg");
} else {
    scr_Console_Log_Write("!Chatter: Could not find - " + chatter_room_name, "reg");
    chatter_file_opened = false;
}

scr_Console_Log_Write("!Chatter: Dialogues loaded - " + string(dialogue_found), "reg");

