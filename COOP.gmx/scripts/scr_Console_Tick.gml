//appends the cursor to the input line
if (console_focused) {
    console_inlog_disp = "" + console_inlog + console_cursor_disp;
}

script_execute(scr_Console_Tick_Focus);
