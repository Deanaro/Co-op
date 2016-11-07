var temp_room = argument[0];

parley_room = file_text_open_read(working_directory + temp_room + ".txt");

if (parley_room != -1) {
    scr_Console_Log_Write("!Parley: Room Opened - " + temp_room, "reg");
} else {
    scr_Console_Log_Write("!Parley: Could not find - " + temp_room, "reg");
}


