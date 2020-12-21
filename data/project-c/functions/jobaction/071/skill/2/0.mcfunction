#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 600

#スキル効果
#共通
playsound entity.minecart.inside master @a ~ ~ ~ 3 1.4
particle cloud ~ ~1.52 ~ 1 0.7 1 0.3 90 
execute as @s[scores={Mana=0..99},team=Red] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:200,Tags:["071Air","071Air1","071AirRed1"]}
execute as @s[scores={Mana=0..99},team=Blue] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:200,Tags:["071Air","071Air1","071AirBlue1"]}


execute as @s[scores={Mana=100..199},team=Red] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:200,Tags:["071Air","071Air2","071AirRed2"]}
execute as @s[scores={Mana=100..199},team=Blue] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:200,Tags:["071Air","071Air2","071AirBlue2"]}
scoreboard players remove @s[scores={Mana=100..199}] Mana 100

execute as @s[scores={Mana=200..299},team=Red] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:200,Tags:["071Air","071Air3","071AirRed3"]}
execute as @s[scores={Mana=200..299},team=Blue] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:200,Tags:["071Air","071Air3","071AirBlue3"]}
scoreboard players remove @s[scores={Mana=200..299}] Mana 200

execute as @s[scores={Mana=300..},team=Red] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:400,Tags:["071Air","071Air4","071AirRed4"]}
execute as @s[scores={Mana=300..},team=Blue] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:400,Tags:["071Air","071Air4","071AirBlue4"]}
scoreboard players remove @s[scores={Mana=300..}] Mana 300

#リセット
tag @s remove SkillReady2
data merge block 1 2 31 {auto:1b}