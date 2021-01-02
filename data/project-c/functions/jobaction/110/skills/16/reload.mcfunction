execute if entity @s[tag=110aqua-gun-reload1] run scoreboard players set @s CT1 1060
execute if entity @s[tag=110aqua-gun-reload1] run tag @s remove SkillReady1
execute if entity @s[tag=110aqua-gun-reload2] run scoreboard players set @s CT2 1060
execute if entity @s[tag=110aqua-gun-reload2] run tag @s remove SkillReady2
execute if entity @s[tag=110aqua-gun-reload3] run scoreboard players set @s CT3 1060
execute if entity @s[tag=110aqua-gun-reload3] run tag @s remove SkillReady3
execute unless entity @s[tag=110aqua-gun-reload] run scoreboard players set #110- counter_3 1030
execute unless entity @s[tag=110aqua-gun-reload] if score @s counter_2 matches 16 run scoreboard players operation @s CT1 = #110- counter_3
execute unless entity @s[tag=110aqua-gun-reload] if score @s counter_2 matches 16 if score #110- counter_3 matches ..1200 run clear @s #project-c:neac/all{110skillSlot:1b}
execute unless entity @s[tag=110aqua-gun-reload] if score @s counter_2 matches 16 if score #110- counter_3 matches ..1200 run tag @s remove SkillReady1
execute unless entity @s[tag=110aqua-gun-reload] if score @s counter_3 matches 16 run scoreboard players operation @s CT2 = #110- counter_3
execute unless entity @s[tag=110aqua-gun-reload] if score @s counter_3 matches 16 if score #110- counter_3 matches ..1200 run clear @s #project-c:neac/all{110skillSlot:2b}
execute unless entity @s[tag=110aqua-gun-reload] if score @s counter_3 matches 16 if score #110- counter_3 matches ..1200 run tag @s remove SkillReady2
execute unless entity @s[tag=110aqua-gun-reload] if score @s counter_4 matches 16 run scoreboard players operation @s CT3 = #110- counter_3
execute unless entity @s[tag=110aqua-gun-reload] if score @s counter_4 matches 16 if score #110- counter_3 matches ..1200 run clear @s #project-c:neac/all{110skillSlot:3b}
execute unless entity @s[tag=110aqua-gun-reload] if score @s counter_4 matches 16 if score #110- counter_3 matches ..1200 run tag @s remove SkillReady3
execute unless entity @s[tag=110aqua-gun-reload] run scoreboard players reset #110- counter_3

clear @s minecraft:diamond_hoe
playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 1 0.5
playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1 0.5