console_line_size = (console_text_size * 96 / 72) + console_text_buffer; //converts point to pixels and adds the pixel buffer size

if (console_focused = true) {
console_offset = console_line_size;
} else {
console_offset = 0;
}

if (console_pos = 'bottom') {
    console_height = (console_lines*console_line_size + console_text_buffer);
    console_yloc = view_hport;
    console_outlog_y = console_yloc - console_line_size - console_offset;
    console_inlog_y = console_yloc - console_line_size;
    console_outlog_dir = -1;
} else if (console_pos = 'top') {
    console_height = (console_lines*console_line_size + console_text_buffer);
    console_yloc = 0;
    console_outlog_y = console_yloc + console_offset;
    console_inlog_y = console_yloc;
    console_outlog_dir = 1;
}

console_rec_y1 = console_yloc + console_outlog_dir * console_height + (console_outlog_dir * console_offset);
console_rec_x1 = console_xloc + view_wport[0]-1;
//console_yloc + console_outlog_dir * console_height + (console_outlog_dir * console_offset)
