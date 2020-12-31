execute store result score @s CT1 run data get entity @s SelectedItem.tag.wnkmSkillCT 1
scoreboard players set @s counter_1 0
summon area_effect_cloud ~ ~0.2 ~ {Particle:"minecraft:enchant",Radius:0.7f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:2b,Amplifier:4b,Duration:14,ShowIcon:1b,ShowParticles:0b}]}
execute anchored eyes run summon area_effect_cloud ^ ^1 ^ {Duration:50,Tags:["this","104powerbomb"]}
execute as @e[tag=this] positioned as @s run tp @s ~ ~ ~ ~ 30
execute if entity @s[team=Red] run tag @e[tag=this] add 104powerbombR
execute if entity @s[team=Blue] run tag @e[tag=this] add 104powerbombB
scoreboard players operation @e[tag=this,limit=1,sort=nearest] playerNumber = @s playerNumber
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
tag @e[tag=this] remove this


playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 1 1.6

data merge block -124 61 -62 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
