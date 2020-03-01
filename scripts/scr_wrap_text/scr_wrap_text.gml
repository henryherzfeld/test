///@description scr_wrap_text
///@arg0 text
///@arg1 max_length

var str = argument0;
var max_len = argument1;

var str_len = string_length(str);
var last_space = 1;

var count = 0;
var substr;

repeat(str_len){
	substr = string_copy(str, 0, count);
	if(string_char_at(str, count) == " ") {last_space = count;}

	if(string_width(substr) > max_len){
		str = string_delete(str, last_space, 1)
		str = string_insert("\n", str, last_space);
	}
	count += 1;
}

return str;