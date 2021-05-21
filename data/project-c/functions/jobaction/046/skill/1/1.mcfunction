scoreboard players add @e[tag=046-1] counter 1
execute as @e[tag=046-1] at @s run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 2 1.45
execute as @e[tag=046-1] at @s run particle minecraft:end_rod ~ ~3 ~ 0 1 0 0 25 force @a

execute if entity @e[tag=046-1,scores={counter=20},limit=1] as @e[tag=046-1,scores={counter=20}] at @s run summon minecraft:lightning_bolt
execute if entity @e[tag=046-1,scores={counter=20},limit=1,tag=Red] as @e[tag=046-1,scores={counter=20}] at @s run effect give @e[distance=..2,team=Blue] glowing 7 0 false
execute if entity @e[tag=046-1,scores={counter=20},limit=1,tag=Blue] as @e[tag=046-1,scores={counter=20}] at @s run effect give @e[distance=..2,team=Red] glowing 7 0 false