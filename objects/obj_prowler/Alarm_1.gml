/// @description prowler prowling

if (x == xprevious && y == yprevious)
{
	prowlerprowl();
	prowling++;
}
alarm[1] = 150;

if (prowling >= 5)
{
	prowling = 0;
	state = "dormant";
	alarm[1] = -1;
}
	
