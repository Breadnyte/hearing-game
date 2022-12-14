/// @description Player movement, collision and all other fun stuff

//switch state

switch (state)
{
	case "move":
		movement();
		break
}

collision();

//sneak state switch 
if (keyboard_check(vk_shift))
{
	spd = 0.8;
}
else
{
	spd = ogspd;
}

//setting up echolocation offset

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
		var pulseSpread = spd * 2;
		
		SoundPulse(x + (hspd * pOffset), y + (vspd * pOffset), pulseSpread, pulseVelocity); //will edit this to change the size of the pluse and other attributes
	}
	steptime = 0;
	pOffset = 0;
}

/*if !(x == xprevious && y == yprevious)
{
	if (pOffset < 50)
	{
		pOffset += 2;
	}
	if (steptime > stepdelay)
	{
		var pulseVelocity = spd / 25;
		var pulseSpread = spd * 2;
		
		SoundPulse(x + (hspd * pOffset), y + (vspd * pOffset), pulseSpread, pulseVelocity);
		
		steptime = 0;
	}
	pOffset = 0;
}