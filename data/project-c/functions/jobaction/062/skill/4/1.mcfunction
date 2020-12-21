particle end_rod ^ ^1 ^ 0.1 0.1 0.1 0.01 3 force @a

execute as @s at @s if entity @a[scores={jobNumber=62},limit=1,sort=nearest,distance=4..] run execute if score @s playerNumber = @p[scores={jobNumber=62},gamemode=!spectator,limit=1] playerNumber run tp @s ^ ^ ^0.5 facing entity @a[scores={jobNumber=62},limit=1,sort=nearest]

execute as @s at @s if entity @a[scores={jobNumber=62},limit=1,sort=nearest,distance=6..] run particle end_rod ^ ^1 ^ 0.1 0.1 0.1 0.1 2 force @a
execute as @s at @s if entity @a[scores={jobNumber=62},limit=1,sort=nearest,distance=6..] run tp @s ^ ^ ^0.5 facing entity @a[scores={jobNumber=62},limit=1,sort=nearest]

execute as @s at @s if entity @a[scores={jobNumber=62},limit=1,sort=nearest,distance=100..] run tp @s @a[scores={jobNumber=62},limit=1,sort=nearest]

scoreboard players add @s counter_1 1

execute if score @s playerNumber = @p[scores={jobNumber=62},gamemode=!spectator,distance=..50,limit=1] playerNumber run scoreboard players set @s counter_1 0

kill @s[scores={counter_1=50..}]