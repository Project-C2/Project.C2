scoreboard players set @s CT3 1000

execute at @s run particle dust 1 0.1 0 3 ^ ^1 ^1 0.1 0.1 0.1 0 5 force
execute at @s run particle dust 1 0.1 0 3 ^ ^1 ^2 0.1 0.1 0.1 0 5 force
execute at @s run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 2 0.75
scoreboard players set @s counter_3 12
data merge block -69 2 31 {auto:1b}

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3