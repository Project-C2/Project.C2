scoreboard players add @s counter 1
tag @s add it
execute as @a[scores={jobNumber=112},gamemode=!spectator] if score @s playerNumber = @e[tag=it,limit=1] playerNumber run tag @s add 112user
execute as @a[scores={jobNumber=112},gamemode=!spectator] if score @s playerNumber = @e[tag=it,limit=1] playerNumber run scoreboard players set @e[tag=it,limit=1] counter 0
tag @s remove it
execute unless entity @s[tag=112_eternal_big] positioned as @a[tag=112user,limit=1,sort=nearest] positioned ^ ^ ^-3 run tp @s ~ ~ ~ ~3.3 0
execute if entity @s[tag=112_eternal_big] positioned as @a[tag=112user,limit=1,sort=nearest] positioned ^ ^ ^-3 run tp @s ~ ~-0.3 ~ ~3.3 0
function project-c:jobaction/112/skill/2/3
execute at @s run particle minecraft:dust 0 0 0 0.7 ~ ~0.9 ~ 0.2 0.2 0.2 1 2 normal @a
execute at @s run particle minecraft:dust 0 0 0 0.7 ~ ~0.9 ~ 0.2 0.2 0.2 1 2 force @a

tag @a[tag=112user] remove 112user

execute if score @s counter matches 3.. run function project-c:jobaction/112/skill/2/end