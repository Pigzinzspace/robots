extends Node2D
enum coord {TOP_LEFT,TOP_RGHT,BOT_LEFT,BOT_RIGHT,PUCK,LEFT_GATE_TOP,LEFT_GATE_BOT,
RIGHT_GATE_TOP,RIGHT_GATE_BOT,RED_1,RED_2,RED_3,GREEN_1,GREEN_2,GREEN_3}
var game_info = {
	coord.TOP_LEFT : Vector2(0,0),
	coord.TOP_RGHT : Vector2(1600,0),
	coord.BOT_LEFT : Vector2(0,900),
	coord.BOT_RIGHT: Vector2(1600,900),
	coord.PUCK : Vector2(800,450),
	coord.LEFT_GATE_TOP : Vector2(190,390),
	coord.LEFT_GATE_BOT : Vector2(190,510),
	coord.RIGHT_GATE_TOP : Vector2(1410,390),
	coord.RIGHT_GATE_BOT : Vector2(1410,510),
	coord.RED_1 : Vector2(600,225) ,
	coord.RED_2 : Vector2(650,450) ,
	coord.RED_3 : Vector2(600,625) ,
	coord.GREEN_1 : Vector2(1000,510) ,
	coord.GREEN_2 : Vector2(950,510)  ,
	coord.GREEN_3 : Vector2(1000,510) 
}  
var objects_conditions = {
	coord.RED_1 : {"ref": null, "valocity":Vector2(0,0), "hit_cd":false},
	coord.RED_2 : {"ref": null, "valocity":Vector2(0,0), "hit_cd":false},
	coord.RED_3 : {"ref": null, "valocity":Vector2(0,0), "hit_cd":false},
	coord.GREEN_1 : {"ref": null, "valocity":Vector2(0,0), "hit_cd":false},
	coord.GREEN_2 : {"ref": null, "valocity":Vector2(0,0), "hit_cd":false},
	coord.GREEN_3 : {"ref": null, "valocity":Vector2(0,0), "hit_cd":false},
	coord.PUCK : {"ref": null, "valocity":Vector2(0,0)}
}
	
var team_targets = {
	coord.RED_1 : {"target": Vector2(0,0), "speed":0.0 },
	coord.RED_2 : {"target": Vector2(0,0), "speed":0.0 },
	coord.RED_3 : {"target": Vector2(0,0), "speed":0.0 },
	coord.GREEN_1 : {"target": Vector2(0,0), "speed":0.0 },
	coord.GREEN_2 : {"target": Vector2(0,0), "speed":0.0 },
	coord.GREEN_3 : {"target": Vector2(0,0), "speed":0.0 }
}



func _ready():
	pass 
