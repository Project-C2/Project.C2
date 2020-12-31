execute store result score @s CT3 run data get entity @s SelectedItem.tag.wnkmSkillCT 1
scoreboard players set @s counter_4 1

playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 3 2


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
