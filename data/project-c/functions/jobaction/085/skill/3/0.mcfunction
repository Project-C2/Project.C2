#判定
#CT
scoreboard players set @s usedSkill 3
scoreboard players set @s CT3 900

#スキル効果
#共通

summon area_effect_cloud ~ ~6 ~ {Particle:"dust 0 0 0 2",Radius:5f,Duration:100}

playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 2 0.75
execute if entity @s[team=Red] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["085-rift","085-riftRed"],NoGravity:1b,Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["085-rift","085-riftBlue"],NoGravity:1b,Marker:1b}

#リセット
tag @s remove SkillReady3
data merge block -81 2 89 {auto:1b}