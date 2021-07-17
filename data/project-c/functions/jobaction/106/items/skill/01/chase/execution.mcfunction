#スキル6

playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 1.4
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.7 1.2
particle minecraft:effect ~ ~1 ~ 0.2 0.5 0.2 1 20 force

scoreboard players operation #106- teamNumber = @s teamNumber
execute as @e[tag=Battle,distance=..7] unless score @s teamNumber = #106- teamNumber run tag @s add hit


summon marker ~ ~ ~ {Tags:["106-skill01-C-time","this"]}
#execute anchored eyes positioned ^ ^ ^ facing entity @e[tag=hit,limit=1] eyes run tp @e[tag=this] ~ ~ ~ ~ ~
execute at @s anchored eyes positioned ^ ^ ^ run tp @e[tag=this] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
execute as @e[tag=this] at @s run function project-c:jobaction/106/items/skill/01/chase/notice
scoreboard players set @e[tag=this] counter 0
tag @e[tag=this] remove hit-block
tag @e[tag=this] remove this

execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run tag @s remove hit
scoreboard players reset #106-

