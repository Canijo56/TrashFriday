///@description pathfinding(x,y)
///@param1 x
///@param2 y

var auX=(argument[0]);
var auY=(argument[1]);

path_clear_points(currentPath);
mp_grid_path(obj_level.pathfindingMap,currentPath,x,y,auX,auY,true);

path_start(currentPath,5,0,0);

