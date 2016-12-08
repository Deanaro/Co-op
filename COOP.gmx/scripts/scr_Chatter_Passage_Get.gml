if (argument_count >= 1) {
    var call_type = argument[0]
} else {
    var call_type = 0
}

switch (call_type) {
    case 0:
        var dial_array = chatter_dialogue_array[dialogue_focusX,1];
        var text_line = dial_array[line_focusX,item_focusX];
    scr_Console_Log_Write(text_line + "// D: " + string(dialogue_focusX) + "| Line: " + string(line_focusX) + " | Item: " + string(item_focusX),"ai"); 
    
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
}
