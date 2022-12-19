/// @description Player movement, collision and all other fun stuff

//switch state

switch (state)
{
	case "move":
		movement();
		break
}

collision();


//create pulse
steptime++;
if (steptime > stepdelay)
{
	if !(x == xprevious && y == yprevious) //if last position is different than current
		{
		//this will get called too much without a delay, but idc
			instance_create_layer(x, y, "Instances", obj_pulse);
		}
	steptime = 0;
}