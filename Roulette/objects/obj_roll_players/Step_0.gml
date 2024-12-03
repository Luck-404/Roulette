//decrement life until 0
if (_count_life > 0){
	_count_life--;	
}

// when pressed
if (mouse_check_button_pressed(mb_left) && place_meeting(mouse_x,mouse_y,obj_roll_players)){
	show_debug_message("CLICK");	

	_var_rand = irandom_range(120,180);
	
	// spawn blinker
	_ref_blink = instance_create_layer(151,368,"Spinners",obj_blinker);	
	_ref_blink._count_life = _var_rand;


	// spawn spinner 
	audio_stop_sound(win);
	audio_stop_sound(spin);
	audio_play_sound(spin,1,false);
	_ref_spin = instance_create_layer(96,480,"Spinners",obj_spinner);
	_ref_spin._count_life = _var_rand;
	show_debug_message("made 1 spinner");	
	
	// wait 3 seconds (life), then roll and update the text in obj_box
}

