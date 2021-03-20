scoreboard players set @s usedSkill 3
scoreboard players set @s CT3 1100

execute if entity @s[team=Red] run teleport @s @a[scores={deathCount=1..},team=Red,distance=1..,limit=1]
execute if entity @s[team=Blue] run teleport @s @a[scores={deathCount=1..},team=Blue,distance=1..,limit=1]

playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 0

effect give @s strength 7 0
effect give @s speed 7 0
effect give @s resistance 1 4

scoreboard players set @s counter_3 1