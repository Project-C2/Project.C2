#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 0

#スキル効果
#共通
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 3 1
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 3 2

execute if entity @s[team=Red] run summon armor_stand ~ ~1 ~ {Tags:["079-starabyss","079-starabyss1","079-starabyssR"],Invisible:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~1 ~ {Tags:["079-starabyss","079-starabyss1","079-starabyssB"],Invisible:1b}

execute if entity @s[team=Red] run summon armor_stand ~ ~1 ~ {Tags:["079-starabyss","079-starabyss2","079-starabyssR"],Invisible:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~1 ~ {Tags:["079-starabyss","079-starabyss2","079-starabyssB"],Invisible:1b}

execute if entity @s[team=Red] run summon armor_stand ~ ~1 ~ {Tags:["079-starabyss","079-starabyss3","079-starabyssR"],Invisible:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~1 ~ {Tags:["079-starabyss","079-starabyss3","079-starabyssB"],Invisible:1b}

execute if entity @s[team=Red] run summon armor_stand ~ ~1 ~ {Tags:["079-starabyss","079-starabyss4","079-starabyssR"],Invisible:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~1 ~ {Tags:["079-starabyss","079-starabyss4","079-starabyssB"],Invisible:1b}

#リセット
tag @s remove SkillReady2
data merge block 97 2 31 {auto:1b}