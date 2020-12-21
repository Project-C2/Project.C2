scoreboard players set @s CT3 700
replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 25
clear @s ender_pearl
scoreboard players set @s counter_1 106

effect give @s minecraft:blindness 2 0 true
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 3 0.8
particle minecraft:portal ~ ~ ~ 1 1 1 2 800 normal @a
particle minecraft:portal ~ ~ ~ 1 1 1 2 200 force @a

execute anchored eyes positioned ^ ^ ^ run kill @e[type=minecraft:ender_pearl,limit=1,sort=nearest,distance=..3]

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3