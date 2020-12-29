
tag @s add 106_spectator_this
execute if entity @s[team=Red] if entity @e[team=!Red,tag=!106_spectator_this,tag=Battle,distance=0,limit=1] run tag @s add 106_spectate_skill
execute if entity @s[team=Blue] if entity @e[team=!Blue,tag=!106_spectator_this,tag=Battle,distance=0,limit=1] run tag @s add 106_spectate_skill

#マーカー
execute if entity @s[scores={counter_3=12,CT1=1200..},tag=106_spectate_skill] run function project-c:jobaction/106/items/skill/12/use
execute if entity @s[scores={counter_4=12,CT2=1200..},tag=106_spectate_skill] run function project-c:jobaction/106/items/skill/12/use
execute if entity @s[scores={counter_5=12,CT3=1200..},tag=106_spectate_skill] run function project-c:jobaction/106/items/skill/12/use


execute if entity @s[tag=106_spectate_skill] run tag @s remove 106_spectate_skill
tag @s remove 106_spectator_this