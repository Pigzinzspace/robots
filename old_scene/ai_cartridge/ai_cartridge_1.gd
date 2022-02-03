extends Node2D



var field_inverted = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func get_targets(team = "RED"):
	
	
	var attack_distance
	if team != "RED":
# тогда чтоб  не считать все 2 раза мы должны инвертировать все поле (координаты углов) 
# позиции и скорость игроков и шайбы положение ворот, все это зеркально отражаем относительно 
#вертикального центра поля и меняем местами команды 
# и счтаем всегда для левой команды а потом  меняем назад
		invert_all()
		field_inverted = true
#теперь у нас одинаковый алгоритм для красной и зеленой команды
#мы всегда за красную  	\


	for player in [Global.game_info.RED_1,Global.game_info.RED_2,Global.game_info.RED_3] :

#мы можем бить по шайбе ?
		var puck_conrol = puck_control(player)
#шайба находится между игроком и вражескими воротами 		
		var goal_on_line = goal_on_line(player)
#удар готов
		var hit_cooldown = hit_cooldown(player)
		
		if !hit_cooldown and puck_control and  goal_on_line :
			goal_kick(player) 
		elif !hit_cooldown and !puck_control:
			move_to_attack_place(player)
		elif hit_cooldown :
			move_to_def_goal(player)
	
		
					
			
			
func puck_control(player)->bool:
	return true
	
