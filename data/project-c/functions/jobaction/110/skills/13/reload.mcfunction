execute if entity @s[tag=110mana-gun-reload1] run scoreboard players set @s CT1 1080
execute if entity @s[tag=110mana-gun-reload1] run tag @s remove SkillReady1
execute if entity @s[tag=110mana-gun-reload2] run scoreboard players set @s CT2 1080
execute if entity @s[tag=110mana-gun-reload2] run tag @s remove SkillReady2
execute if entity @s[tag=110mana-gun-reload3] run scoreboard players set @s CT3 1080
execute if entity @s[tag=110mana-gun-reload3] run tag @s remove SkillReady3
execute unless entity @s[tag=110mana-gun-reload] run scoreboard players set #110- counter_3 1050

clear @s minecraft:netherite_hoe
playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 1 0.5
playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1 0.5