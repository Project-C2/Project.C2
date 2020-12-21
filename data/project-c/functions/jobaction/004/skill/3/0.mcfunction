scoreboard players set @s CT3 600


playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 2
particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1


tag @e[type=arrow,distance=..5,limit=1,sort=nearest] add ArrowP
data merge entity @e[tag=ArrowP,sort=nearest,limit=1] {damage:5.5d,Tag:["Arrow"],life:1200}

data merge block -69 2 -122 {auto:1b}

clear @s minecraft:bow{display:{Name:"{\"text\":\"パワーショット\"}"}} 1

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3