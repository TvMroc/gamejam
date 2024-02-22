function sPickup(item, itemInstance) {
	for (var inv = 0; inv < oPlayer.maxInvSlots; inv++) {
		if (a_inv[inv] == -1) {
			a_inv[inv] = item;
			with itemInstance {
				instance_destroy()	
			}
			break;
		}		
	}
}