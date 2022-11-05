// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movement()
{
	//this is an animportant change - gabe was NOT HERE ANYMORE HAHA ITS CONRAD THE GHOST
	
	//setting up movement
	right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
	left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
	up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
	down = (keyboard_check(vk_down) || keyboard_check(ord("S")));
	
	//complicated input stuff
	input_direction = point_direction(0, 0, right - left, down - up);
	input_length = (right - left != 0) || (down - up != 0);
	
	hspd = lengthdir_x(input_length * spd, input_direction);
	vspd = lengthdir_y(input_length * spd, input_direction);
}
	


function collision()
{
	//horizontal collision
	if (place_meeting(x + hspd, y, obj_solid))
	{
		while (!place_meeting (x + sign(hspd), y, obj_solid))
		{
			x += sign(hspd);
		}
		hspd = 0;
	}
	x += hspd;
	
	//vertical collision
	if (place_meeting(x, y + vspd, obj_solid))
	{
		while (!place_meeting (x, y + sign(vspd), obj_solid))
		{
			y += sign(vspd);
		}
		vspd = 0;
	}
	y += vspd;
}
