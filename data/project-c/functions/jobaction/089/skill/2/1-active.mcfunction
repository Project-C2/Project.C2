playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.6
particle minecraft:flash ~ ~1.6 ~ 1.5 1.5 1.5 1 12 normal @a
particle minecraft:flash ~ ~1.6 ~ 1.5 1.5 1.5 1 3 force @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.25 50 force @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.25 200 normal @a
scoreboard players operation #dummy teamNumber = @s teamNumber
summon minecraft:lightning_bolt ~ ~ ~
execute rotated ~ 0 run summon minecraft:lightning_bolt ^ ^ ^2.5
execute rotated ~ 0 run summon minecraft:lightning_bolt ^ ^ ^5.0
execute rotated ~120 0 run summon minecraft:lightning_bolt ^ ^ ^2.5
execute rotated ~120 0 run summon minecraft:lightning_bolt ^ ^ ^5.0
execute rotated ~240 0 run summon minecraft:lightning_bolt ^ ^ ^2.5
execute rotated ~240 0 run summon minecraft:lightning_bolt ^ ^ ^5.0