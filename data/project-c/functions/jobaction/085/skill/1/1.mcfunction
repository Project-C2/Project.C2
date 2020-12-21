scoreboard players add @s counter 1
kill @s[scores={counter=60..}]

particle dust 0 0.5 0 2 ~ ~ ~ 0.5 0.5 0.5 1 2 force @a

teleport @s ^ ^ ^1 ~ ~
execute if entity @s[tag=085-warpRed] if entity @e[distance=..3,team=Blue,tag=Battle] run scoreboard players set @a[scores={jobNumber=85},limit=1,sort=nearest,team=Red] CT1 800
execute if entity @s[tag=085-warpBlue] if entity @e[distance=..3,team=Red,tag=Battle] run scoreboard players set @a[scores={jobNumber=85},limit=1,sort=nearest,team=Blue] CT1 800

execute if entity @s[tag=085-warpRed] if entity @e[distance=..3,team=Blue,tag=Battle] run teleport @a[scores={jobNumber=85},limit=1,sort=nearest,team=Red] @s
execute if entity @s[tag=085-warpBlue] if entity @e[distance=..3,team=Red,tag=Battle] run teleport @a[scores={jobNumber=85},limit=1,sort=nearest,team=Blue] @s
execute if entity @s[tag=085-warpRed] if entity @e[distance=..3,tag=Battle,team=Blue] run kill @s
execute if entity @s[tag=085-warpBlue] if entity @e[distance=..3,tag=Battle,team=Red] run kill @s

execute unless block ^ ^ ^1 air run particle end_rod ~ ~ ~ 0 0 0 1 30 force @a
execute unless block ^ ^ ^1 air run kill @s

execute as @e[tag=085-warp] at @s run function project-c:jobaction/085/skill/1/1