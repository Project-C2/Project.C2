#スキル14



function project-c:jobaction/106/items/skill/10/check



execute if entity @s[tag=tp_ok] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.8
execute if entity @s[tag=tp_ok] run particle minecraft:portal ~ ~1 ~ 0 0 0 1 20 force
execute if entity @s[tag=tp_ok] run tp @s ^ ^ ^7.5
execute if entity @s[tag=tp_ok] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.8
execute if entity @s[tag=tp_ok] at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 1 20 force



execute if score @s[tag=tp_ok] counter_3 matches 10 run tag @s add skill1_use
execute if score @s[tag=tp_ok] counter_4 matches 10 run tag @s add skill2_use
execute if score @s[tag=tp_ok] counter_5 matches 10 run tag @s add skill3_use
#===================================================================


execute if entity @s[tag=tp_ok] run scoreboard players set #106_CT counter 500

execute if entity @s[tag=tp_ok] run function project-c:jobaction/106/items/skill/bulk




execute if entity @s[tag=tp_ok] run tag @s remove tp_ok
