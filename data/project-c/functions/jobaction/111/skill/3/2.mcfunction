scoreboard players set @s CT1 1200
scoreboard players set @s CT2 1200
scoreboard players set @s CT3 1180

playsound minecraft:entity.wither.death master @a ~ ~ ~ 2 1
particle minecraft:firework ~ ~1 ~ 0 0 0 0.4 30 force @a
scoreboard players set @s counter 100
scoreboard players set @s counter_1 8