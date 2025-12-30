var lay_id = layer_get_id("Collisions");
var map_id = layer_tilemap_get_id(lay_id);
var grid_unit = 32;

if loop == true{
for (var xx = 0; xx <= room_width; xx += grid_unit)
{
    for (var yy = 0; yy <= room_height; yy += grid_unit)
    { 
        if (tilemap_get_at_pixel(map_id, xx, yy) != 0)
        {
            instance_create_depth(xx+16, yy+16, 10, obj_wall);
        }
	if xx=room_width or yy=room_height{loop = false
		}
    }
}}

if loop == false{instance_destroy()}

