// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playeranim()
{
	//setting variables to manage player animation
	var mydirection = round(direction / 90);
	var totalframes = sprite_get_number(sprite_index) / 4; 
	//^^ NOTE: this will have to be changed once placeholder sprite is replaced
	image_index = frame + (mydirection * totalframes);
	frame += sprite_get_speed(sprite_index) / 60;
	
	if (frame >= totalframes)
	{
		endanim = true;
		frame -= totalframes;
	}
	else
	{
		endanim = false;
	}
	
}