scoreboard players add @s counter 1
tag @s add it
execute as @a[tag=048using] if score @s playerNumber = @e[tag=it,limit=1] playerNumber run tag @s add 048user
tag @s remove it
execute unless entity @s[tag=048_eternal_big] positioned as @a[tag=048user,limit=1,sort=nearest] positioned ^ ^ ^-3 run tp @s ~ ~ ~ ~8.8 0
execute if entity @s[tag=048_eternal_big] positioned as @a[tag=048user,limit=1,sort=nearest] positioned ^ ^ ^-3 run tp @s ~ ~-0.3 ~ ~8.8 0

execute at @s run particle minecraft:firework ~ ~0.9 ~ 0 0 0 0.1 1 force @a

execute if score @s counter matches 200.. run function project-c:jobaction/048/skill/3/end
tag @a[tag=048user] remove 048user