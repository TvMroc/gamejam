function sDrop(item){
	if (item > -1) {
		newItem = instance_create_layer(oPlayer.x+5, oPlayer.y-25, "Item", oItem)
		newItem.image_index = item;
	}
	oPlayer.a_inv[oPlayer.selectedItem] = -1
}