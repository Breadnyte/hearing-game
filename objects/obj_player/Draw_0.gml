/// @description Begin echolocation
draw_self();

draw_set_color(c_white);

if !(x == xprevious && y == yprevious)
{
	drawing = true;
}

if (drawing == true)
{
	draw_circle(x, y, r, true);
	alarm[0] = 1;
}

if 	(r >= 50)
{
	drawing = false;
	r = 0;
}

