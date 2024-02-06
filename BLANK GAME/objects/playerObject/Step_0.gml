key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);
var run = 1;

if (keyboard_check(vk_control)) {
	run = 3.2;
} else {
	run = 1;	
}
var move = key_right - key_left;

hsp = move * walkSpeed * run;

vsp = vsp + grv;

if (place_meeting(x,y+1,wallObject)) && (key_jump) {
	vsp = -6;
}

if (place_meeting(x+hsp,y,wallObject)) {
	while (!place_meeting(x+sign(hsp),y,wallObject)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

if (place_meeting(x,y+vsp,wallObject)) {
	while (!place_meeting(x,y+sign(vsp),wallObject)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;