// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SoundPulse(xpos, ypos)
{
	instance_create_layer(xpos, ypos, "Instances", obj_pulse); //creates the pulse
}