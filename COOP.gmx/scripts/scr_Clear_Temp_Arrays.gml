/* Clear the temp passage array */
var passages_height = array_height_2d(chatter_focussed_passage_array);
for (i = 0; i < passages_height; i++) {
    var passage_height = array_length_2d(chatter_focussed_passage_array, i);
    /* for every column item; reset to no text */
    for (h = 0; h < passage_height; h++) {
        chatter_focussed_passage_array[i,h] = "";
    }
}
