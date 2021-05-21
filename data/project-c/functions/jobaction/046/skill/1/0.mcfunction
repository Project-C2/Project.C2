#CT
scoreboard players set @s CT1 1000
#スキル効果
execute if entity @s[team=Red] as @e[team=Blue,distance=..6,limit=3] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust",Radius:0f,Duration:21,Age:-1,WaitTime:-1,Tags:["046-1","Red"]}
execute if entity @s[team=Blue] as @e[team=Red,distance=..6,limit=3] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust",Radius:0f,Duration:21,Age:-1,WaitTime:-1,Tags:["046-1","Blue"]}

data merge block -73 2 -20 {auto:1b}

#演出
particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.25 100 force @a
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 2 1.75

#リセット
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1