/// @description Choose new Store and Discount

newDiscounts = max(irandom (maxActiveDiscounts - activeDiscounts),1);

for (var i = 0; i < newDiscounts; i++){
// evitar que haya mas de maxActiveDiscounts de descuentos a la vez
	if (activeDiscounts <= maxActiveDiscounts){
		//elige una tienda
		var stores = obj_level.stores;
		var storeLength = array_length_1d(stores)-1;
		var store = stores[irandom(storeLength)];

		//aplica el descuento
		store.currentDiscount = possibleDiscounts[irandom(possibleDiscountsLength-1)];
	
	
		// decide timeOut del descuento
		var timeOffset = 2;
		timeOffset *= room_speed;
		store.alarm[0] = timeOut + irandom_range(-timeOffset, timeOffset);
		alarm[0]= timeOut + irandom_range(-timeOffset, timeOffset);
		activeDiscounts++;
	}
	else{
		// en caso de no poder poner mas Descuentos, 
		// checkea cada segundo cuando podra hacerlo
		alarm[0] = 1;
	}
}






