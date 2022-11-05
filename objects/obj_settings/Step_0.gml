/// @description all available settings

//restart
if (keyboard_check_pressed(ord("R")))
{
	game_restart();
}

//quit
if (keyboard_check_pressed(vk_escape))
{
	game_end();
}

//fullscreen
if (keyboard_check_pressed(ord("F")))
{
	if (window_get_fullscreen() == true)
	{
		window_set_fullscreen(false);
	}
	else
	{
		window_set_fullscreen(true);
	}
}