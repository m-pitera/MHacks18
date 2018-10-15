//url_open_full( "https://youtu.be/6n3pFFPSlW4", "_blank", "resizable=0, height=200, scrollbars=0");

if (room != room_last){
	if (room + 1 == room_last){
		room_goto(0)
	}
	else{
		room_goto_next();
	}
}
else
{
	game_end();
}