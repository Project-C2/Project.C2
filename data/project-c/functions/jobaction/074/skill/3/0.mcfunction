scoreboard players set @s CT3 1180
scoreboard players add @s counter_3 1
execute unless score @s counter_3 matches 0..1 run scoreboard players set @s counter_3 0
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
effect clear @s minecraft:jump_boost
effect clear @s minecraft:haste

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3