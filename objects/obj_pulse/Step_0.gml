/// @description pulsing


image_xscale += rate;
if (image_xscale > 10)
{
	instance_destroy(self);
}

image_yscale += rate;
if (image_yscale > 10)
{
	instance_destroy(self);;
}


