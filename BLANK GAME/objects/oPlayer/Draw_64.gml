#region DRAW THE INVENTORY
startInvX = (room_width / 2) - (sprite_get_width(spr_inv_box) * 2.5);
startInvY = room_height - (sprite_get_height(spr_inv_box) / 2)- 30;

for (var inv = 0; inv < maxInvSlots; inv++) {
    itemX = startInvX + (inv * sprite_get_width(spr_inv_box));
    itemY = startInvY;

    draw_sprite(spr_inv_box, 0, itemX, itemY);
    
	item = a_inv[inv];
	
	if (item > -1) draw_sprite(spr_items_all, item, itemX, itemY);
	
	if (selectedItem == inv) draw_sprite(spr_selected_item, 0, itemX, itemY);
}


#endregion