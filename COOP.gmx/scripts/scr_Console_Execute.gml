if (console_focused == true) {
    //Only parse if string length at least 3 chars
    if string_length(console_inlog) > 2 {
        scr_Console_Parse(); 
    }
    console_inlog = "";
}
