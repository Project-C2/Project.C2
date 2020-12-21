#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 800


#スキル効果
#共通
playsound minecraft:block.portal.travel master @a ~ ~ ~ 3.0 0.75
particle large_smoke ~ ~1.52 ~ 1 0 1 0.3 30 

execute if entity @s[team=Red] run summon area_effect_cloud ~ ~1 ~ {CustomName:"カタストロフィー",Particle:smoke,ReapplicationDelay:30,Radius:3f,RadiusPerTick:0.1f,RadiusOnUse:0f,Duration:60,WaitTime:100,Effects:[{Id:26,Amplifier:102,Duration:10,ShowParticles:0b}]}
execute if entity @s[team=Blue] run summon area_effect_cloud ~ ~1 ~ {CustomName:"カタストロフィー",Particle:smoke,ReapplicationDelay:30,Radius:3f,RadiusPerTick:0.1f,RadiusOnUse:0f,Duration:60,WaitTime:100,Effects:[{Id:26,Amplifier:103,Duration:10,ShowParticles:0b}]}

#リセット
tag @s remove SkillReady2