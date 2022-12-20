/// @description pulsing


image_xscale += rate;
if (image_xscale > 4) //max size
{
	instance_destroy(self);
}

image_yscale += rate;
if (image_yscale > 4) //max size
{
	instance_destroy(self);;
}


