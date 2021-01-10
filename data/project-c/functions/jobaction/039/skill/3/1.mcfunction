execute store result score #039-dummy counter run data get entity @s Health 100
execute store result score #039-dummy counter_1 run data get entity @s AbsorptionAmount 100
execute if score #039-dummy counter_1 matches 1.. run scoreboard players operation #039-dummy counter += #039-dummy counter_1
scoreboard players operation #039-dummy counter_2 = #039-dummy counter
scoreboard players operation #039-dummy counter_2 /= #2 counter
scoreboard players operation #039-dummy counter_1 = #039-dummy counter_2
execute if data entity @s ActiveEffects[{Id:11b}] store result score #039-dummy counter_3 run data get entity @s ActiveEffects[{Id:11b}].Amplifier
execute if score #039-dummy counter_3 matches 0.. run scoreboard players add #039-dummy counter_3 1
execute if score #039-dummy counter_3 matches 6.. run scoreboard players set #039-dummy counter_3 5
execute if score #039-dummy counter_3 matches 1.. run scoreboard players operation #039-dummy counter_3 *= #20 counter
execute if score #039-dummy counter_3 matches 1.. run scoreboard players operation #039-dummy counter_2 *= #039-dummy counter_3
execute if score #039-dummy counter_3 matches 1.. run scoreboard players operation #039-dummy counter_2 /= #100 counter
execute if score #039-dummy counter_3 matches 1.. run scoreboard players operation #039-dummy counter_1 += #039-dummy counter_2
execute if score #039-dummy counter matches 600..1920 run tag @s add 039trans_haste_0
execute if score #039-dummy counter matches 960..3180 run tag @s add 039trans_speed_0
execute if score #039-dummy counter matches 1440.. run tag @s add 039trans_resistance_0
execute if score #039-dummy counter matches 1921.. run tag @s add 039trans_haste_1
execute if score #039-dummy counter matches 2400.. run tag @s add 039trans_strength_0
execute if score #039-dummy counter matches 3181.. run tag @s add 039trans_speed_1
execute if entity @s[type=player] run function project-c:jobaction/039/skill/3/hit-player
execute unless entity @s[type=player] run function project-c:jobaction/039/skill/3/hit-entity
scoreboard players reset #039-dummy
schedule function project-c:jobaction/039/skill/3/schedule 1t replace