#スキル12
execute if score @s counter_3 matches 12 run tag @s add skill1_use
execute if score @s counter_4 matches 12 run tag @s add skill2_use
execute if score @s counter_5 matches 12 run tag @s add skill3_use
#===================================================================

scoreboard players set #106_CT counter 140


execute if entity @s[scores={damageDealt=1..}] run function project-c:jobaction/106/items/skill/12/chase
execute if entity @s[tag=106_spectate_skill,tag=!marker_chase] run function project-c:jobaction/106/items/skill/12/spectate


function project-c:jobaction/106/items/skill/bulk


execute if entity @s[tag=marker_chase] run tag @s remove marker_chase
