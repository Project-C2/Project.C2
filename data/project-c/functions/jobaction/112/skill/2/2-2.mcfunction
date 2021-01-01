scoreboard players add @s counter 1
tag @s add it
execute as @a[scores={jobNumber=112},gamemode=!spectator] if score @s playerNumber = @e[tag=it,limit=1] playerNumber run tag @s add 112user
execute as @a[scores={jobNumber=112},gamemode=!spectator] if score @s playerNumber = @e[tag=it,limit=1] playerNumber run scoreboard players set @e[tag=it,limit=1] counter 0
tag @s remove it

execute positioned as @a[tag=112user,limit=1,sort=nearest] positioned ^ ^ ^ run tp @s ~ ~ ~ ~3 ~

execute facing ^1 ^ ^ run particle minecraft:dust 0 0 0 1 ^ ^ ^3 0 0 0 0 1
execute facing ^1 ^ ^1 run particle minecraft:dust 0 0 0 1 ^ ^ ^3 0 0 0 0 1
execute facing ^ ^ ^1 run particle minecraft:dust 0 0 0 1 ^ ^ ^3 0 0 0 0 1
execute facing ^-1 ^ ^1 run particle minecraft:dust 0 0 0 1 ^ ^ ^3 0 0 0 0 1
execute facing ^-1 ^ ^ run particle minecraft:dust 0 0 0 1 ^ ^ ^3 0 0 0 0 1
execute facing ^-1 ^ ^-1 run particle minecraft:dust 0 0 0 1 ^ ^ ^3 0 0 0 0 1
execute facing ^ ^ ^-1 run particle minecraft:dust 0 0 0 1 ^ ^ ^3 0 0 0 0 1
execute facing ^1 ^ ^-1 run particle minecraft:dust 0 0 0 1 ^ ^ ^3 0 0 0 0 1

execute facing ^0.5 ^ ^ run particle minecraft:dust 0 0 0 1 ^ ^ ^1.75 0 0 0 0 1
execute facing ^0.5 ^ ^0.5 run particle minecraft:dust 0 0 0 1 ^ ^ ^1.75 0 0 0 0 1
execute facing ^ ^ ^0.5 run particle minecraft:dust 0 0 0 1 ^ ^ ^1.75 0 0 0 0 1
execute facing ^-0.5 ^ ^0.5 run particle minecraft:dust 0 0 0 1 ^ ^ ^1.75 0 0 0 0 1
execute facing ^-0.5 ^ ^ run particle minecraft:dust 0 0 0 1 ^ ^ ^1.75 0 0 0 0 1
execute facing ^-0.5 ^ ^-0.5 run particle minecraft:dust 0 0 0 1 ^ ^ ^1.75 0 0 0 0 1
execute facing ^ ^ ^-0.5 run particle minecraft:dust 0 0 0 1 ^ ^ ^1.75 0 0 0 0 1
execute facing ^0.5 ^ ^-0.5 run particle minecraft:dust 0 0 0 1 ^ ^ ^1.75 0 0 0 0 1

tag @a[tag=112user] remove 112user

execute if score @s counter matches 3.. run function project-c:jobaction/112/skill/2/end