scoreboard players set @s CT3 0
scoreboard players set @s counter_3 300


execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-virvel","126-virvel1","126-virvelR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-virvel","126-virvel2","126-virvelR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-virvel","126-virvel3","126-virvelR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-virvel","126-virvel4","126-virvelR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-virvel","126-virvel5","126-virvelR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-virvel","126-virvel6","126-virvelR"],Marker:1b}

execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-virvel","126-virvel1","126-virvelB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-virvel","126-virvel2","126-virvelB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-virvel","126-virvel3","126-virvelB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-virvel","126-virvel4","126-virvelB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-virvel","126-virvel5","126-virvelB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-virvel","126-virvel6","126-virvelB"],Marker:1b}

teleport @e[limit=1,sort=nearest,tag=126-virvel1] ^ ^ ^ ~0 0
teleport @e[limit=1,sort=nearest,tag=126-virvel2] ^ ^ ^ ~60 0
teleport @e[limit=1,sort=nearest,tag=126-virvel3] ^ ^ ^ ~120 0
teleport @e[limit=1,sort=nearest,tag=126-virvel4] ^ ^ ^ ~180 0
teleport @e[limit=1,sort=nearest,tag=126-virvel5] ^ ^ ^ ~240 0
teleport @e[limit=1,sort=nearest,tag=126-virvel6] ^ ^ ^ ~300 0

playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 2 0
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.2
particle minecraft:cloud ^ ^ ^1 0.1 0.1 0.1 0.5 400 normal @a

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3

data merge block -120 61 -11 {auto:1b}