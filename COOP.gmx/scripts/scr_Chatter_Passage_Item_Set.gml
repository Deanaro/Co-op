dialogue_line_num = argument[0];
dialogue_column_num = argument[1];
dialogue_item = argument[2];

/* set the next empty array line to the passed dialogue_item */
chatter_focussed_passage_array[dialogue_line_num,dialogue_column_num] = dialogue_item;
//show_debug_message("!Chatter: line item written: " + dialogue_item); //DEBUG

