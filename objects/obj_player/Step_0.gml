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
		var pulseVelocity = spd / 25;
		
		SoundPulse(x + (hspd * 25), y + (vspd * 25), 5, pulseVelocity); //will edit this to change the size of the pluse and other attributes
	}
	steptime = 0;
}