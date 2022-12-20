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
		instance_create_layer(x, y, "Instances", obj_pulse); //creates the pulse
	}
	steptime = 0;
}