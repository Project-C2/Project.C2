#スキル8
playsound minecraft:entity.generic.eat master @a ~ ~1 ~ 0.1 0
playsound minecraft:particle.soul_escape master @a ~ ~1 ~ 2 0
particle block soul_sand ~ ~1 ~ 2 2 2 0.1 10 force

scoreboard players add @s counter_1 1
execute if entity @s[scores={counter_1=1}] run scoreboard players add @s counter_2 1

execute if entity @s[tag=106-SoulCurse-Red] run particle dust 1 0 0 2 ~ ~1 ~ 0 0.2 0 0 1 force @a
execute if entity @s[tag=106-SoulCurse-Blue] run particle dust 0 0 1 2 ~ ~1 ~ 0 0.2 0 0 1 force @a

execute if entity @s[scores={counter_1=1},tag=106-SoulCurse-Red] positioned ~ ~1 ~ as @e[tag=Battle,team=!Red,distance=..5] run tag @s add 106_soul_curse_hit
execute if entity @s[scores={counter_1=1},tag=106-SoulCurse-Blue] positioned ~ ~1 ~ as @e[tag=Battle,team=!Blue,distance=..5] run tag @s add 106_soul_curse_hit
execute if entity @s[scores={counter_1=1}] if entity @e[tag=106_soul_curse_hit,limit=1] run function project-c:jobaction/106/items/skill/08/hit


execute if entity @s[scores={counter_1=10..}] run scoreboard players set @s counter_1 0
