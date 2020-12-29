#スキル3

#execute if entity @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.3 10 force
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 2
tag @s add this
execute if entity @s[team=Red] as @e[team=!Red,tag=Battle,distance=..10,tag=!this] run tag @s add hit
execute if entity @s[team=Blue] as @e[team=!Blue,tag=Battle,distance=..10,tag=!this] run tag @s add hit
execute if entity @e[tag=hit,limit=1] store result score #106_player counter if entity @e[tag=hit]

execute if entity @e[tag=hit,limit=1] if entity @s[tag=skill1_use] run scoreboard players operation #106_CT counter *= #106_player counter
execute if entity @e[tag=hit,limit=1] if entity @s[tag=skill2_use] run scoreboard players operation #106_CT counter *= #106_player counter
execute if entity @e[tag=hit,limit=1] if entity @s[tag=skill3_use] run scoreboard players operation #106_CT counter *= #106_player counter

execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s anchored eyes run particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 20 force
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run effect give @s minecraft:glowing 60 200

execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run tag @s remove hit
scoreboard players reset #106_player

tag @s remove this
