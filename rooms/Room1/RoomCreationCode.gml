
var spriteWidth = sprite_get_width(object_get_sprite(obj_cube));
var spriteHeight= sprite_get_height(object_get_sprite(obj_cube));

for (var xoff = 0; xoff < room_width / spriteWidth; xoff++)
{
	for (var yoff = 0; yoff < room_height / spriteHeight; yoff++)
	{
		instance_create_layer(xoff * spriteWidth, yoff * spriteHeight, "CubeLayer", obj_cube);
	}
}