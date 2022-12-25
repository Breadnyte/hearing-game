/// @description Player movement, collision and all other fun stuff

//switch state

switch (state)
{
	case "move":
		movement();
		break
}

collision();

if !(x == xprevious && y == yprevious) //if last position is different than current
{
	if (pOffset < 50)
	{
		pOffset += 2;
	}
}
else
{
	pOffset = 0;
}


//create pulse
steptime++;
if (steptime > stepdelay)
{
	if !(x == xprevious && y == yprevious) //if last position is different than current
	{
		var pulseVelocity = spd / 25;
		
		SoundPulse(x + (hspd * pOffset), y + (vspd * pOffset), 5, pulseVelocity); //will edit this to change the size of the pluse and other attributes
	}
	steptime = 0;
}