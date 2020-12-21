scoreboard players set @s CT2 600


playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 0.5
particle portal ~ ~1 ~ 0 0 0 4 300

execute if entity @s[team=Red] run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"ゲート\"}",CustomNameVisible:1b,Particle:portal,Radius:1.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:200,Tags:["EnderPortalR","EnderPortal","EnderPortalSet"]}
execute if entity @s[team=Blue] run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"ゲート\"}",CustomNameVisible:1b,Particle:portal,Radius:1.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:200,Tags:["EnderPortalB","EnderPortal","EnderPortalSet"]}

scoreboard players operation @e[tag=EnderPortalSet] playerNumber = @s playerNumber
tag @e[tag=EnderPortalSet] remove EnderPortalSet

data merge block -47 2 -122 {auto:1b}
data merge block -47 2 -120 {auto:1b}

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2