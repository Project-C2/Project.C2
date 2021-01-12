scoreboard players set @s counter_2 20
scoreboard players set @s counter_3 0

tag @s add user
execute as @e[tag=119_2] if score @s playerNumber = @a[tag=user,limit=1,sort=nearest] playerNumber run scoreboard players set @s counter 1000
tag @s remove user

tag @s remove SkillDelay2
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
