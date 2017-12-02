

#region pathfinding
//Creo la matriz para el pathfinding
pathfindingMap=mp_grid_create(0,0,10,10,96,96);
//inicializar
mp_grid_clear_all(pathfindingMap);
//Guardo la información del terreno jugable
var lay_id = layer_get_id("Floor");
var map_id = layer_tilemap_get_id(lay_id);
//Si no hay casilla de terreno jugable relleno la matriz
for(var i=0; i<10; i++){
	for(var j=0; j<10; j++){
		if(tilemap_get(map_id,i,j)==0){
			mp_grid_add_cell(pathfindingMap, i, j);
		}
	}
}
#endregion

stores = [];


with (obj_store){
	other.stores[array_length_1d(other.stores)] = id;	
	show_debug_message("id: " + string_format(id, 3, 3));
	show_debug_message("array_length" + string_format(array_length_1d(other.stores),3,3));
}


storeManager = instance_create_depth(0, 0, 0, obj_storeManager);
