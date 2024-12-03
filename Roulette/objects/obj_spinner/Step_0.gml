//decrement life until 0
if (_count_life > 0){
	_count_life--;	
}

else if (_count_life <= 0){
	audio_stop_sound(spin);
	if (flag_win == false){
		audio_play_sound(win,0,false);	
		flag_win = true;
		show_debug_message("PLAYED WIN");
	} 
	instance_destroy();
}