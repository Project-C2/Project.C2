scoreboard players set @s CT3 800
scoreboard players set @s counter_3 10

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1.5
particle explosion ~ ~1 ~ 0 0 0 0 3

execute as @s[team=Red] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["128-Eviscerate","128-EviscerateR"],Marker:1b}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["128-Eviscerate","128-EviscerateB"],Marker:1b}

item replace entity @s armor.chest with minecraft:air

execute as @s at @s run teleport @e[limit=1,sort=nearest,tag=128-Eviscerate] ^ ^0.5 ^ ~ ~
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3

data merge block -96 61 -11 {auto:1b}