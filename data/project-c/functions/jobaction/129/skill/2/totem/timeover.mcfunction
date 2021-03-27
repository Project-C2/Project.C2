
scoreboard players operation #129- playerNumber = @s playerNumber

execute as @a[tag=Battle] if score @s playerNumber = #129- playerNumber run tag @s add 129-2-owner

execute as @a[tag=129-2-owner] store result score #129- counter_1 run data get entity @s AbsorptionAmount 100
scoreboard players set #129- counter_2 2100
scoreboard players operation #129- counter_2 -= #129- counter_1
scoreboard players operation #129- counter_3 = @s subcounter
scoreboard players operation #129- counter_3 += @s HarfHP
scoreboard players operation #129- counter_3 -= #129- counter_2


scoreboard players operation @a[tag=129-2-owner] ScoreToHealth = #129- counter_3

scoreboard players set @a[tag=129-2-owner] OutCombat 0
effect clear @a[tag=129-2-owner] minecraft:regeneration
effect clear @a[tag=129-2-owner] minecraft:absorption
execute as @a[tag=129-2-owner] at @s run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.1 20 force
execute as @a[tag=129-2-owner] at @s run playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 1.3

execute if entity @s[tag=129-totem-using] run scoreboard players set @s counter -1


execute as @a[tag=129-2-owner] run tag @s remove 129-2-owner
