#実行者     -> jobNumber = 88
#実行地点   -> 実行者
#S1 -> counter/1/2, S2 -> counter3, S3 -> counter4/5

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/088/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/088/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/088/replaceitem/3

execute if entity @s[tag=SkillReady1,scores={sneak=1..},gamemode=!spectator] run function project-c:jobaction/088/skill/1/0
execute if entity @s[tag=SkillReady2,scores={damageDealt=1..}] run function project-c:jobaction/088/skill/2/0
execute if entity @s[tag=SkillReady3,tag=!088-S3-used,tag=088-S3-ready] run function project-c:jobaction/088/skill/3/0

#kill @e[tag=088-1-position,sort=nearest,limit=1,tag=!088-S1-stand]
execute if entity @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,CustomNameVisible:0b,Radius:0f,Duration:2,Tags:["088-1-position","INI"]}
scoreboard players operation @e[tag=088-1-position,tag=INI,sort=nearest,limit=1] playerNumber = @s playerNumber
tag @e[tag=088-1-position,tag=INI,sort=nearest,limit=1] remove INI

#アイテムを拾えなくする
execute if entity @s[gamemode=adventure] run kill @e[type=item,distance=..6]

scoreboard players set @s sneak 0
scoreboard players reset @s[tag=!088-S3-used] damageDealt
scoreboard players reset @s damageTaken