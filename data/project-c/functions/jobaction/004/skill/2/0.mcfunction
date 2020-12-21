scoreboard players set @s CT2 1060


playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 2
particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1

tag @e[type=arrow,distance=..5,limit=1,sort=nearest] add ArrowR
data merge block -71 2 -122 {auto:1b}


tag @s remove SkillReady2
scoreboard players set @s usedSkill2