
execute store result score #118-- counter_1 run data get entity @s Health 100
execute as @a[tag=118-1--] store result score #118-- counter_2 run data get entity @s Health 100

scoreboard players operation #118-- counter_3 = @a[tag=118-1--,limit=1] counter_7
scoreboard players operation #118-- counter_3 -= #118-- counter_1

scoreboard players operation #118-- counter_4 = @a[tag=118-1--,limit=1] counter_8
scoreboard players operation #118-- counter_4 -= #118-- counter_2

execute if score #118-- counter_3 matches 1.. run tag @a[tag=118-1--,limit=1] add 118-1-selector-damage
execute if score #118-- counter_4 matches 1.. run tag @a[tag=118-1--,limit=1] add 118-1-own-damage

execute if entity @e[tag=118-1-selector-damage,limit=1] run scoreboard players operation #118-- damageTaken = #118-- counter_3
execute if entity @e[tag=118-1-own-damage,limit=1] run scoreboard players operation #118-- damageTaken = #118-- counter_4


execute if score #118-- damageTaken matches 1.. run function project-c:jobaction/118/skill/1/damage



scoreboard players operation @a[tag=118-1--,limit=1] counter_7 = #118-- counter_1
scoreboard players operation @a[tag=118-1--,limit=1] counter_8 = #118-- counter_2



tag @a[tag=118-1--,limit=1] remove 118-1-selector-damage
tag @a[tag=118-1--,limit=1] remove 118-1-own-damage


execute if score @a[tag=118-1--,limit=1] Mana matches 1 as @a[tag=118-1--] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 force @a
execute if score @a[tag=118-1--,limit=1] Mana matches 1 at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 force @a

scoreboard players reset #118--