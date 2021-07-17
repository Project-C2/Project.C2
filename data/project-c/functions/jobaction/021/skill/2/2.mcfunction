teleport @s ^ ^ ^ ~7 ~

particle minecraft:smoke ~ ~ ~ 3 0.5 3 0.1 10
particle minecraft:campfire_cosy_smoke ~ ~ ~ 3 0.5 3 0.01 3
particle minecraft:campfire_cosy_smoke ~ ~ ~ 2 0.5 2 0.1 6
scoreboard players add @s counter 1
scoreboard players add @s subcounter 1

execute if entity @s[scores={subcounter=21..}] run particle minecraft:dust 0 1 0 1 ~ ~0.6 ~ 3 3 3 3 60
execute if entity @s[scores={subcounter=21..}] as @e[distance=..5,tag=Battle] unless score @s teamNumber = @a[limit=1,sort=nearest,gamemode=!spectator] teamNumber run effect give @s poison 2 2 true
execute if entity @s[scores={subcounter=21..}] as @e[distance=..5,tag=Battle] unless score @s teamNumber = @a[limit=1,sort=nearest,gamemode=!spectator] teamNumber run effect give @s slowness 2 1 true
execute if entity @s[scores={subcounter=21..}] as @e[distance=..5,tag=Battle] unless score @s teamNumber = @a[limit=1,sort=nearest,gamemode=!spectator] teamNumber run effect give @s weakness 2 2 true

execute rotated ~120 -1.1 run particle large_smoke ^ ^ ^4 0.1 0.1 0.1 0 4
execute rotated ~240 -1.1 run particle large_smoke ^ ^ ^4 0.1 0.1 0.1 0 4
execute rotated ~ -1.1 run particle large_smoke ^ ^ ^4 0.1 0.1 0.1 0 4
execute if entity @s[scores={subcounter=21..}] run playsound minecraft:entity.blaze.burn master @a ~ ~ ~ 2 1
scoreboard players set @s[scores={subcounter=21..}] subcounter 0
kill @s[scores={counter=350..}]