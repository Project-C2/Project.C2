scoreboard players add @s counter_1 1

tag @s add it
execute as @a[scores={jobNumber=104,counter_4=24..}] if score @s playerNumber = @e[tag=it,limit=1] playerNumber run tag @s add user
execute as @a[tag=user] at @s anchored eyes run tp @e[tag=it,limit=1,sort=nearest] ^ ^ ^ ~ ~
tag @s remove it

particle minecraft:dust 1 0 0 0.4 ^-0.5 ^0.2 ^-0.5 0.1 0.1 0.1 1 10 force @a
particle minecraft:dust 1 0 0 0.4 ^-0.5 ^0.2 ^-0.5 0.1 0.1 0.1 1 40 normal @a
execute if score @s counter_1 matches 20.. if entity @s[tag=104dokkanR] if entity @e[tag=Battle,team=!Red,distance=..13,limit=1] run tag @e[tag=Battle,team=!Red,distance=..20,limit=1,sort=nearest] add 104hit
execute if score @s counter_1 matches 20.. if entity @s[tag=104dokkanB] if entity @e[tag=Battle,team=!Blue,distance=..13,limit=1] run tag @e[tag=Battle,team=!Blue,distance=..20,limit=1,sort=nearest] add 104hit
execute if entity @e[tag=104hit,limit=1] run function project-c:jobaction/104/skill/3/4

tag @a[tag=user] remove user