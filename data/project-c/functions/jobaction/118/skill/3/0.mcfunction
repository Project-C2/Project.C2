scoreboard players set @s CT3 1200
execute store result score #118-- counter run data get entity @s SelectedItem.tag.cooltime
scoreboard players operation #118-- counter *= #20 counter
scoreboard players operation @s CT3 -= #118-- counter

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3