scoreboard players add @s counter 1
tag @s add it
execute as @a[tag=051using] if score @s playerNumber = @e[tag=it,limit=1] playerNumber run tag @s add 051user
tag @s remove it
execute unless entity @s[tag=051_eternal_big] positioned as @a[tag=051user,limit=1,sort=nearest] positioned ^ ^ ^-3 run tp @s ~ ~ ~ ~8.8 0
execute if entity @s[tag=051_eternal_big] positioned as @a[tag=051user,limit=1,sort=nearest] positioned ^ ^ ^-3 run tp @s ~ ~-0.3 ~ ~8.8 0
execute if score @s counter matches 11.. run function project-c:jobaction/051/skill/2/3
execute at @s run particle minecraft:dust 0.573 0.725 1 0.7 ~ ~0.9 ~ 0.2 0.2 0.2 1 8 normal @a
execute at @s run particle minecraft:dust 0.573 0.725 1 0.7 ~ ~0.9 ~ 0.2 0.2 0.2 1 2 force @a

execute if score @s counter matches 170.. run function project-c:jobaction/051/skill/2/end
tag @a[tag=051user] remove 051user