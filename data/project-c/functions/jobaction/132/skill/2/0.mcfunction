scoreboard players set @s CT2 400
replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 40

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4 0.5
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 4 0
particle minecraft:poof ~ ~ ~ 2 2 2 1 1000 normal @a
particle minecraft:poof ~ ~ ~ 1 1 1 1 250 force @a
effect give @s slowness 5 4
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 2 0.5
execute as @s[team=Red] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["132-Storm","132-StormR"]}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["132-Storm","132-StormB"]}

execute as @s[team=Red] at @s run effect give @a[distance=..12,team=Red,tag=Battle] resistance 5 1
execute as @s[team=Blue] at @s run effect give @a[distance=..12,team=Blue,tag=Battle] resistance 5 1

data merge block -50 61 -11 {auto:1b}

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
