//decrement life until 0
if (_count_life > 0){
	_count_life--;	
}

if (_count_life <= 0){
	instance_destroy();
}