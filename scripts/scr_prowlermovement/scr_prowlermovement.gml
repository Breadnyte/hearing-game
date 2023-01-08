// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function prowlerdormant()
{
	var mx = irandom_range(x - 150, x + 150);
	var my = irandom_range(y - 150, y + 150);
	
	if (mp_grid_path(global.prowlgrid, prowlpath, x, y, mx, my, 1))
	{
		path_start(prowlpath, 1, path_action_stop, false);
	}
}

function prowlerdetect()
{
	//detecting if the player is in the vicinity of the prowler
	if (point_distance(x, y, obj_player.x, obj_player.y) < 100)
	{
		//detecting if the player is currently moving or making noise
		if ((!obj_player.x == obj_player.xprevious && !obj_player.y == obj_player.yprevious) && obj_player.spd > 1)
		{
			//rolls a chance to detect the player
			var detect = irandom_range(0, 5)
			if (detect == 0)
			{
				dormant = false;
				state = "hunt";
			}
		}
	}
}
	
function prowlerhunt()
{
	var mx = obj_player.x;
	var my = obj_player.y;
	//hunting
	if (mp_grid_path(global.prowlgrid, prowlpath, x, y, mx, my, 1))
	{
		path_start(prowlpath, 2.2, path_action_stop, false);
	}
	//if the player stops producing sound/moving
	if (obj_player.x == obj_player.xprevious && obj_player.y == obj_player.yprevious)
	{
		var detect = irandom_range(0, 15)
		{
			if (detect == 0)
			{
				state = "dormant";
			}
		}
	}
}










function calculateDir(restrict = 0)
{
	//randomizes the direction of the enemy. Dictates what kind of movement the enemy
	//is allowed or restricted from (horizontal or vertical). By default, chooses cardinal directions
	
	rando = irandom_range(0, 3);
	
	if (rando < 1 && restrict != 1)
	{
		return 90;
	}
	else if (rando < 2 && restrict != 2)
	{
		return 180;
	}
	else if (rando < 3 && restrict != 1)
	{
		return 270;
	}
	else if (rando < 4 && restrict != 2)
	{
		return 360;
	}
}
	