/// @description creating pathfinding grid

//Creating the grid
var grid_width = 16;
var grid_height = 16;

var hcells = room_width div grid_width;
var vcells = room_height div grid_height;

global.prowlgrid = mp_grid_create(0, 0, hcells, vcells, grid_width, grid_height);

//Adding walls and pathfinding collision
mp_grid_add_instances(global.prowlgrid, obj_solid, false);


