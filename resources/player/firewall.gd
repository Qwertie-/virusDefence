##
# Copyright (c) 2014 Cristian Porras (porrascristian@gmail.com)
# Distributed under the GNU GPL v3. For full terms see the file LICENSE.
##

extends Sprite
# FIREWALL UNIT PARAMS

const attackDuration 		= 5;
var attactDamage   		= 30;
var timeUnitNextAttack 	= 0;
var   healt 				= 70;

func _ready():
	set_process(true);
	
	
func _process():
	pass
	
func takeDamage(damage):
	healt -= damage;
	if(healt<=0):
		print(get_name()+" I'm Dead!!!");
		var pos = get_pos();
		var arrayXPos = get_node("/root/game").getMapCoordinateX(pos.x+get_texture().get_width()/4+1);
		var arrayYPos = get_node("/root/game").getMapCoordinateY(pos.y+get_texture().get_height());
		get_node("/root/game/").deleteFromUnitMap("firewall",arrayYPos,arrayXPos);
		

