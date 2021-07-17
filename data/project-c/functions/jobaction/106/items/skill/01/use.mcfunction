#スキル1
execute if score @s counter_3 matches 1 run tag @s add skill1_use
execute if score @s counter_4 matches 1 run tag @s add skill2_use
execute if score @s counter_5 matches 1 run tag @s add skill3_use
#===================================================================


scoreboard players set #106_CT counter 400


function project-c:jobaction/106/items/skill/bulk


execute if entity @s[scores={damageDealt=1..}] run function project-c:jobaction/106/items/skill/01/chase/execution
execute if entity @s[scores={sneak=1..},tag=!106_relieve_chase] run function project-c:jobaction/106/items/skill/01/resistance/execution
execute if entity @s[scores={jump=1..},tag=!106_relieve_chase,tag=!106_relieve_resistance] run function project-c:jobaction/106/items/skill/01/heal



execute if entity @s[tag=106_relieve_chase] run tag @s remove 106_relieve_chase
execute if entity @s[tag=106_relieve_resistance] run tag @s remove 106_relieve_resistance

tag @s add 106_relieve_used

