execute store result score @s CT3 run data get entity @s SelectedItem.tag.wnkmSkillCT 1
scoreboard players set @s counter_2 20
scoreboard players set @s counter_4 1

playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1.5 0.7
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1.0 0.7
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 0.5 0.7
summon minecraft:area_effect_cloud ~ ~0.2 ~ {Effects:[{Id:2b,Amplifier:6b,Duration:2,Ambient:1b,ShowParticles:0b,ShowIcon:1b}],Duration:5,Age:4,WaitTime:1,Radius:0.4f,Particle:"minecraft:dust 0 0 0 0"}

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
