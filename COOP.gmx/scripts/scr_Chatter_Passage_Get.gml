/*
Call Types:
0 - the focussed dialogue item will be output to console and iterated
1 - the dialogue name, speaking object and line number is provided as arguments
*/

var call_type = 0; //default call type; if no argument is passed.
if (argument_count >= 1) { var call_type = argument[0]; } //a call type has been passed


switch (call_type) {
    case 0: //prints to console the focussed dialogue item and then iterates to the next one available
        var dial_array = chatter_dialogue_array[dialogue_focusX,1];
        var line_item = dial_array[line_focusX,item_focusX];
        scr_Console_Log_Write(line_item + " // D: " + string(dialogue_focusX) + "| Line: " + string(line_focusX) + " | Item: " + string(item_focusX),"ai"); 
    
        //Iterate item focus
        if (item_focusX+1 == array_length_2d(dial_array, line_focusX)) {
                if (line_focusX+1 < array_height_2d(dial_array)) {
                    line_focusX++;
                } else {
                    if (dialogue_focusX+1 < array_height_2d(chatter_dialogue_array)) {
                        dialogue_focusX++; 
                    } else {
                        dialogue_focusX = 0;
                    }
                    line_focusX = 0;
                }
                item_focusX = 0;
            } else {
                item_focusX++;
            }     
            
    case 1: 
        if (argument_count >= 2) {
            //get the dialogue name from arguments
            var gdialogue_name = string(argument[1]);
            if (string_length(gdialogue_name) < 1) { gdialogue_name = "null" }
            
            if (argument_count >= 3) {
                var gdialogue_obj_name = string(argument[2]);
                if (string_length(gdialogue_obj_name) < 1) { gdialogue_obj_name = "null" }
                
                if (argument_count >=4) {
                    var gdialogue_obj_line = floor(real(argument[3]));
                }
            } else { var gdialogue_obj_name = "null"; var gdialogue_obj_line = 0} //default values
        } else { var gdialogue_name = "null"; var gdialogue_obj_name = "null"; var gdialogue_obj_line = 0; } //default values
    
        dialogue_focusX = -1; //set default dialogue focus to 0
        //Get the focus dialogue with the passed dialogue name
        for (i = 0; i < array_height_2d(chatter_dialogue_array); i++) {
        //show_debug_message("Comparing array dialogue name:" + string(chatter_dialogue_array[i, 0]) + " to " + gdialogue_name); //DEBUG
            if (string_pos(gdialogue_name, chatter_dialogue_array[i, 0]) != 0) {
            //if (chatter_dialogue_array[i, 0] == gdialogue_name) {
                dialogue_focusX = i;
                break;
            }
        }
        if (dialogue_focusX !=-1) { 
            var dial_array = chatter_dialogue_array[dialogue_focusX,1]; 
            
            line_focusX = -1;
            for (i = 0; i < array_height_2d(dial_array); i++) {
                if (dial_array[i, 0] == gdialogue_obj_name) {
                    line_focusX = i;
                    break;
                }
            }
            if (line_focusX !=-1) {
                item_focusX = gdialogue_obj_line;
                var line_item = dial_array[line_focusX,item_focusX];
                scr_Console_Log_Write(line_item + " // D: " + string(dialogue_focusX) + "| Line: " + string(line_focusX) + " | Item: " + string(item_focusX),"ai"); 
            } else { // object name was not found in dialogue
                scr_Console_Log_Write("!Chatter: " + " No dialogue for object: " + string(gdialogue_obj_name) + " found in dialogue: " + string(gdialogue_name) + "...","error"); 
                line_focusX = 0;
            }
        } else { //dialogue name was not found in room dialogue array
            scr_Console_Log_Write("!Chatter: " + " No dialogue with the name: " + string(gdialogue_name) + " found... " ,"error"); 
            dialogue_focusX = 0;
        }
}
