
scoreboard players operation #129- playerNumber = @s playerNumber

execute as @a[tag=Battle] if score @s playerNumber = #129- playerNumber run tag @s add 129-2-owner

execute as @a[tag=129-2-owner] store result score #129- counter_1 run data get entity @s AbsorptionAmount 100
scoreboard players set #129- counter_2 2000
scoreboard players operation #129- counter_2 -= @s HP


execute if score @s HP > @s HarfHP unless score #129- counter_1 matches 1.. run tag @s add 129-2-back
execute unless score @s HP > @s HarfHP if score #129- counter_1 < #129- counter_2 run tag @s add 129-2-back


execute if entity @s[tag=129-2-back] if score @s HP > @s HarfHP run scoreboard players operation @a[tag=129-2-owner] ScoreToHealth = @s HarfHP
execute if entity @s[tag=129-2-back] unless score @s HP > @s HarfHP run scoreboard players operation @a[tag=129-2-owner] ScoreToHealth = @s HP
execute if entity @s[tag=129-2-back] run scoreboard players set @a[tag=129-2-owner] OutCombat 0
execute if entity @s[tag=129-2-back] run effect clear @a[tag=129-2-owner] minecraft:regeneration
execute if entity @s[tag=129-2-back] run effect clear @a[tag=129-2-owner] minecraft:absorption
execute if entity @s[tag=129-2-back] run tp @a[tag=129-2-owner] ~ ~ ~ ~ ~


execute if entity @s[tag=129-2-back] run scoreboard players set @s counter -1
execute if entity @s[tag=129-2-back] run tag @s remove 129-2-back

execute as @a[tag=129-2-owner] run tag @s remove 129-2-owner
