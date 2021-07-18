#スキル8
playsound minecraft:entity.generic.eat master @a ~ ~1 ~ 0.1 0
playsound minecraft:particle.soul_escape master @a ~ ~1 ~ 2 0
particle block soul_sand ~ ~1 ~ 2 2 2 0.1 10 force

scoreboard players add @s counter_1 1

scoreboard players operation #106- teamNumber = @s teamNumber


execute if entity @s[scores={counter_1=1}] run scoreboard players add @s counter_2 5

execute if score @s teamNumber matches 1 run particle dust 1 0 0 2 ~ ~1 ~ 0 0.2 0 0 1 force @a
execute if score @s teamNumber matches 2 run particle dust 0 0 1 2 ~ ~1 ~ 0 0.2 0 0 1 force @a



execute if entity @s[scores={counter_1=1}] positioned ~ ~1 ~ as @e[tag=Battle,distance=..5] unless score @s teamNumber = #106- teamNumber run tag @s add hit
execute if entity @s[scores={counter_1=1}] if entity @e[tag=hit,limit=1] run function project-c:jobaction/106/items/skill/08/hit

execute if entity @s[scores={counter_1=10..}] run scoreboard players set @s counter_1 0

scoreboard players reset #106-