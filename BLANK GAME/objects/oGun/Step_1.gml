if (oPlayer.holdingGun) {
x = oPlayer.x;
y = oPlayer.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay -1;
recoil = max(-10, recoil -1);

if (mouse_check_button(mb_left)) && (firingdelay < -0 )
{
	recoil = 4;
	firingdelay = 100;
	ScreenShake(2,10);
	with (instance_create_layer(x,y,"Bullets",oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}	

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);


if (image_angle >90) && (image_angle <270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}
} else {
	x = 4000;
	y = 4000;
}
	




