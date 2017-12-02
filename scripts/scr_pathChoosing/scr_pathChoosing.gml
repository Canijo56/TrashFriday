//Si no tenemos una tienda a la que ir
if (targetStore == 0){
	//Actualizamos las tiendas que tenemos cerca
	closeStores = [];
	closeDiscountStores = [];
	for (var i = 0; i < storesLength; i++){
		var store = stores[i];
		var dist = distance_to_point(store.x, store.y); 
		//Si esta en mi campo de visión
		if (dist < perceptionRadius){
			//Si es una tienda sin ofertas la guardo en tiendas cercanas
			if (store.currentDiscount <= 0){
				closeStores[array_length_1d(closeStores)] = store.id;
			}
			else{
				closeDiscountStores[array_length_1d(closeDiscountStores)] = store.id;
			}
		}
	}
	//Definir variables para la eleccion
	var maxSeenDiscount = -1;
	var candidateStores = [];
	var closeDiscountStoresLength = array_length_1d(closeDiscountStores);

	// averiguar la tienda cercana objetivo

	// hay alguna tienda con descuento??
	if ( closeDiscountStoresLength> 0){
	
		// elegir las (o las) de mayor descuento
		for (var i = 0; i < closeDiscountStoresLength; i++){
			var store = closeDiscountStores[i];
			var storeCurrentDiscount = store.currentDiscount;
			// compara el descuento de la tienda, con el maximo descuento visto
			if ( storeCurrentDiscount > maxSeenDiscount){
				maxSeenDiscount = storeCurrentDiscount;
				candidateStores = [];
				candidateStores[0] = store;
			
			}else if ( storeCurrentDiscount == maxSeenDiscount ){
				candidateStores[array_length_1d(candidateStores)] = store;
			}
		}
	
		show_debug_message(array_length_1d(candidateStores));
		targetStore = candidateStores[max(irandom(array_length_1d(candidateStores))-1,0)];
		scr_pathFinding(targetStore.x, targetStore.y+96);
	}
	else if(array_length_1d(closeStores)){
		targetStore = closeStores[max(irandom(array_length_1d(closeStores))-1,0)];
		scr_pathFinding(targetStore.x, targetStore.y+96);
	}
	
	alarm[0] = 4 * room_speed;
}

