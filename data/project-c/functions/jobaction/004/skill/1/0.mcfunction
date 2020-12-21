scoreboard players set @s CT1 900


playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 2
particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1

tag @e[type=arrow,distance=..5,limit=1,sort=nearest] add ArrowS
data merge block -73 2 -122 {auto:1b}

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1