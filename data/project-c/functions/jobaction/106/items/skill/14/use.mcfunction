#スキル14
execute if score @s counter_3 matches 14 run tag @s add skill1_use
execute if score @s counter_4 matches 14 run tag @s add skill2_use
execute if score @s counter_5 matches 14 run tag @s add skill3_use
#===================================================================

scoreboard players set #106_CT counter 400

function project-c:jobaction/106/items/skill/bulk


playsound minecraft:ui.loom.take_result master @a ~ ~ ~ 1 1.3
particle minecraft:happy_villager ~ ~1 ~ 0.4 0.6 0.4 0 10 force


scoreboard players set @s MagicFatigue 5


