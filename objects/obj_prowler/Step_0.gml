/// @description run AI

switch (state)
{
	case "dormant":
		prowlerdetect();
		if (dormant == false)
		{
			alarm[0] = 1;
		}
		break
	case "hunt":
	alarm[0] = -1;
		prowlerhunt();
		break
}