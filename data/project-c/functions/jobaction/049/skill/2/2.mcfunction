particle minecraft:dust 1 1 0 3 ^ ^ ^ 1.5 1.5 1.5 0 50 force @a
particle minecraft:end_rod ^ ^ ^ 1.5 1.5 1.5 0.2 20 force @a
playsound minecraft:item.shield.break master @a ~ ~ ~ 3 0
execute positioned ~-3 ~ ~-3 as @e[dx=5.0,dy=8,dz=5.0,tag=Battle] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
scoreboard players operation @e[tag=hit] hurtByNumber = @s playerNumber
tag @e[tag=hit] remove hit
summon minecraft:lightning_bolt
scoreboard players set @s counter 10000
