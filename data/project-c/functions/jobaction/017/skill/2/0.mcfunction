scoreboard players set @s CT2 1000
replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 2

scoreboard players set @s counter_2 1
scoreboard players set @s counter_4 1
effect give @s minecraft:resistance 1 4
effect give @s slowness 1 9 true
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 3 2
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1.6
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1.6
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 1.4
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 1.4

kill @e[tag=112_eternal,sort=nearest,limit=3]
kill @e[tag=112_circle,sort=nearest,limit=1]

particle minecraft:smoke ~ ~ ~ 0 0 0 1 400 normal @a

data merge block -11 2 -20 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2