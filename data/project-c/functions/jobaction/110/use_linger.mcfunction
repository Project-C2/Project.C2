execute if entity @e[type=potion,nbt={Item:{id:"minecraft:lingering_potion",tag:{110skill:1b}}},limit=1] anchored eyes positioned ^ ^ ^ run tag @e[type=potion,nbt={Item:{id:"minecraft:lingering_potion",tag:{110skill:1b}}},limit=1,sort=nearest] add 110getArrow
execute if entity @e[tag=110getArrow,limit=1] as @e[tag=110getArrow,limit=1] store result score #110- counter_1 run data get entity @s Item.tag.110skillID
execute if score #110- counter_1 matches 9..12 as @e[tag=110getArrow,limit=1] store result score #110- counter_2 run data get entity @s Item.tag.110skillSlot
kill @e[tag=110getArrow]
execute if score #110- counter_1 matches 9 run function project-c:jobaction/110/arrows/09/0
execute if score #110- counter_1 matches 10 run function project-c:jobaction/110/arrows/10/0
execute if score #110- counter_1 matches 11 run function project-c:jobaction/110/arrows/11/0
execute if score #110- counter_1 matches 12 run function project-c:jobaction/110/arrows/12/0

execute if score #110- counter_1 matches 9..12 if score #110- counter_2 matches 1 run scoreboard players operation @s CT1 = #110- counter_3
execute if score #110- counter_1 matches 9..12 if score #110- counter_2 matches 1 if score #110- counter_3 matches ..1200 run clear @s #project-c:neac/all{110skillSlot:1b}
execute if score #110- counter_1 matches 9..12 if score #110- counter_2 matches 1 if score #110- counter_3 matches ..1200 run tag @s remove SkillReady1
execute if score #110- counter_1 matches 9..12 if score #110- counter_2 matches 2 run scoreboard players operation @s CT2 = #110- counter_3
execute if score #110- counter_1 matches 9..12 if score #110- counter_2 matches 2 if score #110- counter_3 matches ..1200 run clear @s #project-c:neac/all{110skillSlot:2b}
execute if score #110- counter_1 matches 9..12 if score #110- counter_2 matches 2 if score #110- counter_3 matches ..1200 run tag @s remove SkillReady2
execute if score #110- counter_1 matches 9..12 if score #110- counter_2 matches 3 run scoreboard players operation @s CT3 = #110- counter_3
execute if score #110- counter_1 matches 9..12 if score #110- counter_2 matches 3 if score #110- counter_3 matches ..1200 run clear @s #project-c:neac/all{110skillSlot:3b}
execute if score #110- counter_1 matches 9..12 if score #110- counter_2 matches 3 if score #110- counter_3 matches ..1200 run tag @s remove SkillReady3


scoreboard players reset @s[scores={useLinger=1..}] useLinger
scoreboard players reset #110-