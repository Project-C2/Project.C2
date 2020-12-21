scoreboard players set @s CT2 800
replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 20
scoreboard players set @s counter_2 1
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 2 1.2
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1.2
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.2
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 0.5 1.2
particle minecraft:cloud ~ ~1 ~ 0 0 0 0.3 100 normal @a
particle minecraft:cloud ~ ~1 ~ 0 0 0 0.3 25 force @a


tp @s @s
effect give @s levitation 1 15 true

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
