// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SoundPulse(xpos, ypos, pulseSize = 4, pulseSpeed = 0.2)
{
	instance_create_layer(xpos, ypos, "Instances", obj_pulse, { sizeOfPulse : pulseSize, speedOfPulse : pulseSpeed }); //creates the pulse
}