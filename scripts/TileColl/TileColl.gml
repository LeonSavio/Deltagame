function TileColl(_x, _y) {
    var _w = bbox_right - bbox_left;
    var _h = bbox_bottom - bbox_top;
    var left   = _x - _w * 0.5;
    var right  = _x + _w * 0.5;
    var top    = _y - _h * 0.5;
    var bottom = _y + _h * 0.5;

    if (tilemap_get_at_pixel(global.tilemap_collision, left, top) != 0) return true;
    if (tilemap_get_at_pixel(global.tilemap_collision, right, top) != 0) return true;
    if (tilemap_get_at_pixel(global.tilemap_collision, left, bottom) != 0) return true;
    if (tilemap_get_at_pixel(global.tilemap_collision, right, bottom) != 0) return true;

    return false;

}