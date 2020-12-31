execute if score @s stockcounter matches 2.. run scoreboard players set @s CT2 1200
execute if score @s stockcounter matches 2.. run scoreboard players set @s subcounter 1200
execute if score @s stockcounter matches 3.. run scoreboard players set @s stockcounter 2
scoreboard players remove @s stockcounter 1
execute unless score @s stockcounter matches 1.. run execute store result score #104- CT2 run data get entity @s SelectedItem.tag.wnkmCT 1
execute unless score @s stockcounter matches 1.. run scoreboard players operation @s CT2 -= #104- CT2
execute if score #104- CT2 matches 1.. run scoreboard players reset #104- CT2

scoreboard players set @s counter_3 1
summon area_effect_cloud ~ ~0.2 ~ {Particle:"minecraft:enchant",Radius:0.7f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:2b,Amplifier:4b,Duration:12,ShowIcon:1b,ShowParticles:0b}]}


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
