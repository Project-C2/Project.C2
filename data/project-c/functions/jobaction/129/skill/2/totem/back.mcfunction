
scoreboard players operation #129- playerNumber = @s playerNumber

execute as @a[tag=Battle] if score @s playerNumber = #129- playerNumber run tag @s add 129-2-owner

particle dust 0.7 0 0 1 ~ ~1 ~ 0 0 0 0 1 force @a
execute as @a[tag=129-2-owner] at @s run particle smoke ~ ~1 ~ 0.2 0.3 0.2 0.01 3 force

execute as @a[tag=129-2-owner] store result score #129- counter_1 run data get entity @s AbsorptionAmount 100
scoreboard players set #129- counter_2 2100
scoreboard players operation #129- counter_2 -= @s subcounter

execute if score #129- counter_1 < #129- counter_2 run tag @s add 129-2-back


execute if entity @s[tag=129-2-back] run scoreboard players remove @s HarfHP 100
execute if entity @s[tag=129-2-back] if score @s subcounter > @s counter_9 run tag @s add 129-2-harfhp
execute if entity @s[tag=129-2-back,tag=129-2-harfhp] run scoreboard players operation @s HarfHP += @s counter_9
execute if entity @s[tag=129-2-back,tag=129-2-harfhp] run scoreboard players operation @a[tag=129-2-owner] ScoreToHealth = @s HarfHP
execute if entity @s[tag=129-2-back] unless score @s subcounter > @s counter_9 run tag @s add 129-2-starthp
execute if entity @s[tag=129-2-back,tag=129-2-starthp] run scoreboard players operation @s HarfHP += @s subcounter
execute if entity @s[tag=129-2-back,tag=129-2-starthp] run scoreboard players operation @a[tag=129-2-owner] ScoreToHealth = @s HarfHP
execute if entity @s[tag=129-2-back] run scoreboard players set @a[tag=129-2-owner] OutCombat 0
execute if entity @s[tag=129-2-back] run effect clear @a[tag=129-2-owner] minecraft:regeneration
execute if entity @s[tag=129-2-back] run effect clear @a[tag=129-2-owner] minecraft:absorption
execute if entity @s[tag=129-2-back] run effect give @a[tag=129-2-owner] minecraft:blindness 1 0 true
execute if entity @s[tag=129-2-back] run particle flash ~ ~1 ~ 0 0 0 0 1 force
execute if entity @s[tag=129-2-back] as @a[tag=129-2-owner] run tp @s @s
execute if entity @s[tag=129-2-back] run tp @a[tag=129-2-owner] ~ ~ ~ ~ ~


execute if entity @s[tag=129-2-back] run scoreboard players set @s counter -1
execute if entity @s[tag=129-2-back] run tag @s remove 129-2-back
execute if entity @s[tag=129-2-harfhp] run tag @s remove 129-2-harfhp
execute if entity @s[tag=129-2-starthp] run tag @s remove 129-2-starthp

execute as @a[tag=129-2-owner] run tag @s remove 129-2-owner

scoreboard players reset #129-