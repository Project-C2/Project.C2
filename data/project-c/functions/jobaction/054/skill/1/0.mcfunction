scoreboard players set @s CT1 1000

playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 2
particle minecraft:poof ~ ~1 ~ 1 1 1 0 100 normal @a

summon armor_stand ~ ~ ~ {Tags:["054tornado","054tornadoF"],Marker:1b,Invisible:1b,NoGravity:1b}
execute if entity @s[team=Red] run team join RedDummy @e[tag=054tornadoF]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=054tornadoF]
tag @e[tag=054tornadoF] remove 054tornadoF

data merge block 47 2 -20 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1