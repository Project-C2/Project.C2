scoreboard players set @s CT3 0

kill @e[tag=114-ToheiRailGun]
execute rotated ~ 0 run function project-c:jobaction/114/skill/3/1
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3