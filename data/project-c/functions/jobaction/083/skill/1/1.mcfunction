scoreboard players set @s counter_1 0
scoreboard players set @s usedSkill 1

execute as @e[tag=083-slash] at @s if score @s playerNumber = @a[scores={jobNumber=83,usedSkill=1},limit=1] playerNumber run particle end_rod ~ ~1.52 ~ 0 0 0 1 1 force @a

execute as @e[tag=083-slash] at @s if score @s playerNumber = @a[scores={jobNumber=83,usedSkill=1},limit=1] playerNumber run tag @s add 083-shoot

data merge block -109 2 89 {auto:1b}