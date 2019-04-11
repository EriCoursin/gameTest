if(keyboard_check(ord("D")))
{
	x = x + 3;
}

if(keyboard_check(ord("A")))
{
	x = x - 3;
}

if(keyboard_check(ord("W")))
{
	y = y - 3;
}

if(keyboard_check(ord("S")))
{
	y = y + 3;
}

image_angle = point_direction(x,y,mouse_x,mouse_y);

if(mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x,y,"BulletLayer",obj_bullet)
	cooldown = 10;
}

cooldown = cooldown - 1;