
scoreboard players operation #129- playerNumber = @s playerNumber

execute as @a[tag=Battle] if score @s playerNumber = #129- playerNumber run tag @s add 129-2-owner


execute as @a[tag=129-2-owner] store result score #129- counter_1 run data get entity @s AbsorptionAmount 100
scoreboard players set #129- counter_2 1900
scoreboard players operation #129- counter_2 -= #129- counter_1
scoreboard players operation #129- counter_3 = @s HP
scoreboard players operation #129- counter_3 -= #129- counter_2


scoreboard players operation @a[tag=129-2-owner] ScoreToHealth = #129- counter_3
scoreboard players set @a[tag=129-2-owner] OutCombat 0
effect clear @a[tag=129-2-owner] minecraft:regeneration
effect clear @a[tag=129-2-owner] minecraft:absorption


scoreboard players set @s counter -1

execute as @a[tag=129-2-owner] run tag @s remove 129-2-owner

