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
		SoundPulse(x, y, 4, 0.08); //will edit this to change the size of the pluse and other attributes
	}
	steptime = 0;
}