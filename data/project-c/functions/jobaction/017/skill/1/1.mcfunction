teleport @s ^ ^ ^ ~6 ~
particle flame ~ ~ ~ 3 0.1 3 0.01 3
scoreboard players add @s counter 1
scoreboard players add @s subcounter 1
execute as @a[distance=..6] if score @s teamNumber = @e[limit=1,sort=nearest,tag=017-SetCircle] teamNumber at @s run particle minecraft:dust 1 0 0 1 ~ ~0.6 ~ 0.3 0.6 0.3 3 3
execute as @a[distance=..6] if score @s teamNumber = @e[limit=1,sort=nearest,tag=017-SetCircle] teamNumber run scoreboard players add @s CT1 1
execute as @a[distance=..6] if score @s teamNumber = @e[limit=1,sort=nearest,tag=017-SetCircle] teamNumber run scoreboard players add @s CT2 1
execute as @a[distance=..6] if score @s teamNumber = @e[limit=1,sort=nearest,tag=017-SetCircle] teamNumber run scoreboard players add @s CT3 1

execute rotated ~120 -1.1 run particle minecraft:dust 2 0 0 2 ^ ^ ^6 0.1 0.1 0.1 3 4
execute rotated ~120 -1.1 run particle flame ^ ^ ^6 0.1 0.1 0.1 0.3 5
execute rotated ~120 -1.1 run particle flame ^ ^ ^6 ^-50000 ^ ^ 0.0000095 0 force @a
execute rotated ~120 -1.1 run particle flame ^ ^ ^6 ^100000 ^ ^ 0.0000095 0 force @a
execute rotated ~240 -1.1 run particle minecraft:dust 2 0 0 2 ^ ^ ^6 0.1 0.1 0.1 3 4
execute rotated ~240 -1.1 run particle flame ^ ^ ^6 0.1 0.1 0.1 0.3 5
execute rotated ~240 -1.1 run particle flame ^ ^ ^6 ^-50000 ^ ^ 0.0000095 0 force @a
execute rotated ~240 -1.1 run particle flame ^ ^ ^6 ^100000 ^ ^ 0.0000095 0 force @a
execute rotated ~ -1.1 run particle minecraft:dust 2 0 0 2 ^ ^ ^6 0.1 0.1 0.1 3 4
execute rotated ~ -1.1 run particle flame ^ ^ ^6 0.1 0.1 0.1 0.3 5
execute rotated ~ -1.1 run particle flame ^ ^ ^6 ^-50000 ^ ^ 0.0000095 0 force @a
execute rotated ~ -1.1 run particle flame ^ ^ ^6 ^100000 ^ ^ 0.0000095 0 force @a
execute if entity @s[scores={subcounter=20..}] run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 3 0.75
kill @s[scores={counter=350..}]