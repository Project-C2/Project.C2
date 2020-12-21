scoreboard players set @s CT3 1180
scoreboard players add @s counter_3 1
execute if score @s counter_3 matches 2.. run scoreboard players set @s counter_3 0
execute if score @s counter_3 matches 0 run effect clear @s slow_falling
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3