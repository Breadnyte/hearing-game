/// @description pulsing


image_xscale += rate;
if (image_xscale > 15)
{
	instance_destroy(self);
}

image_yscale += rate;
if (image_yscale > 15)
{
	instance_destroy(self);;
}


