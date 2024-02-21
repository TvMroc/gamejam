if(hascontrol)
{
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;	
}



var move = key_right - key_left;

hsp = move * walkSpeed*run;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -5*run;
}
if (place_meeting(x, y,oLadder)) && (key_jump) {
		vsp = -2*run;
} 
if (place_meeting(x, y,oLadder)) && (!key_jump) {
	vsp = 1.6*run;	
}
if (keyboard_check(vk_control)) {
	run = 1.3;
} else {
	run = 1;	
}

if (place_meeting(x+hsp,y,oWall)) 
{
	while (!place_meeting(x+sign(hsp),y,oWall)) 
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

if (place_meeting(x,y+vsp,oWall)) 
{
	while (!place_meeting(x,y+sign(vsp),oWall)) 
	{
		y = y + sign(vsp);
	}
	vsp = 0; 
}

y = y + vsp;



if(!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayer;
	image_speed = 0;
	if(sign(vsp) > 0) image_index  = 1; else image_index = 0;
}
else 
{
	image_speed = 0.5;
	if(hsp == 0)
	{
		sprite_index = sPlayer;
	}
		else
		{
			sprite_index = sPlayerR;
		}	
}	
if(hsp != 0) image_xscale = sign(hsp);