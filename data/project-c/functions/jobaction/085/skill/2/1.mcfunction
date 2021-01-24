scoreboard players add @s counter 1

particle dust 0.5 0 0.5 2 ~ ~ ~ 0.5 0.5 0.5 1 2 force @a

teleport @s ^ ^ ^1 ~ ~

execute if entity @e[tag=085-swap1] run execute if entity @e[distance=0.1..2,type=!armor_stand,type=!area_effect_cloud,type=!falling_block,tag=!Stable] run execute if entity @e[gamemode=!spectator,type=minecraft:player] run tag @e[distance=0.1..2,type=!armor_stand,type=!area_effect_cloud,type=!falling_block,tag=!Stable] add 85swaptarget

execute if entity @s[tag=085-swap2] run execute if entity @a[distance=0.1..2,gamemode=!spectator,tag=Battle] run tag @a[distance=0.1..2,gamemode=!spectator,tag=Battle] add 85swaptarget

tag @a[distance=..2,gamemode=spectator,tag=!Battle] remove 85swaptarget

execute if entity @s[tag=085-swap1] run execute if entity @e[distance=0.1..2,type=!armor_stand,type=!area_effect_cloud,type=!falling_block,tag=!Stable] run execute if entity @e[tag=85swaptarget] run function project-c:jobaction/085/skill/2/2

execute if entity @s[tag=085-swap2] run execute if entity @a[tag=85swaptarget] run function project-c:jobaction/085/skill/2/2

execute unless block ^ ^ ^1 air run particle end_rod ~ ~ ~ 0 0 0 1 30 force @a
execute unless block ^ ^ ^1 air run scoreboard players set @s counter 60

execute if entity @s[scores={counter=60}] run tag @a[scores={jobNumber=85},tag=Battle,tag=85swap,limit=1] remove 85swap

kill @s[scores={counter=60..}]
execute as @e[tag=085-swap] at @s run function project-c:jobaction/085/skill/2/1

execute unless entity @e[tag=085-swap] run kill @e[tag=085-swaprecall]