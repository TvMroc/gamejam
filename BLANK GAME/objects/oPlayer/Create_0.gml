#region pStats
hsp = 0;
vsp = 0;
grv = 0.3;
walkSpeed = 2.5;
run = 1;

#endregion



#region inv
enum e_item_stats {
	name,	
}

enum e_item_types {
	gun,
	crossbow,
	key,
}

a_items[e_item_types.gun, e_item_stats.name] = "GUN";
a_items[e_item_types.crossbow, e_item_stats.name] = "CROSSBOW";
a_items[e_item_types.key, e_item_stats.name] = "KEY";

maxInvSlots = 6;

for (var inv = 0; inv < maxInvSlots; inv++) {
	a_inv[inv] = -1; 
}
selectedItem = 0;
holdingGun = false;
#endregion
hascontrol = true;