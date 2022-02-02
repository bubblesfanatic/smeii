/// @description Insert description here
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);

xDirection = right - left;

xVector = xDirection * xSpeed;
yVector = yVector + grv;


if (place_meeting(x + xVector, y, oWall))
{
	while(!place_meeting(x + xVector, y, oWall))

	{
		x=x + xDirection;
	}
	xVector = 0;
}
	 
x= x + xVector;

if (place_meeting(x , y + yVector, oWall))
{
		while(!place_meeting(x, y + sign(yVector),  oWall))
			{
			y = y + sign(yVector);
			}	
			yVector = 0
	

}

y = y + yVector;

if (place_meeting(x, y + 1, oWall) and (jump))
{
	yVector = jumpForce;
}






 