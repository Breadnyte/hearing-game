/// @description pulsing


image_xscale += speedOfPulse;
if (image_xscale > sizeOfPulse) //max size
{
	instance_destroy(self);
}

image_yscale += speedOfPulse;
if (image_yscale > sizeOfPulse) //max size
{
	instance_destroy(self);;
}


