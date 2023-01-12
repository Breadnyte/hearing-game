/// @description run AI

switch (state)
{
	case "dormant":
		prowlerdetect();
		if (dormant == 0)
		{
			alarm[0] = 1;
		}
		break
	case "hunt":
		alarm[0] = -1;
		prowlerhunt();
		break
	case "prowl":
		if (prowling == 0)
		{
			alarm[1] = 1;
		}
		break
}