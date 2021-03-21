scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 1060


execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-wind","126-wind1","126-windR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-wind","126-wind2","126-windR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-wind","126-wind3","126-windR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-wind","126-wind4","126-windR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-wind","126-wind5","126-windR"],Marker:1b}
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-wind","126-wind6","126-windR"],Marker:1b}

execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-wind","126-wind1","126-windB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-wind","126-wind2","126-windB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-wind","126-wind3","126-windB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-wind","126-wind4","126-windB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-wind","126-wind5","126-windB"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-wind","126-wind6","126-windB"],Marker:1b}

teleport @e[limit=1,sort=nearest,tag=126-wind1] ^2 ^2 ^-1 ~-70 ~-25
teleport @e[limit=1,sort=nearest,tag=126-wind2] ^2.5 ^1 ^-1 ~-70 ~
teleport @e[limit=1,sort=nearest,tag=126-wind3] ^2 ^ ^-1 ~-70 ~25
teleport @e[limit=1,sort=nearest,tag=126-wind4] ^-2 ^2 ^-1 ~70 ~-25
teleport @e[limit=1,sort=nearest,tag=126-wind5] ^-2.5 ^1 ^-1 ~70 ~
teleport @e[limit=1,sort=nearest,tag=126-wind6] ^-2 ^ ^-1 ~70 ~25

execute if entity @s[team=Red] run execute as @e[team=Blue,tag=Battle,limit=1,sort=nearest,distance=..24] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-windT","126-windTR"],Marker:1b}
execute if entity @s[team=Blue] run execute as @e[team=Red,tag=Battle,limit=1,sort=nearest,distance=..24] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-windT","126-windTB"],Marker:1b}

effect give @s slowness 1 7 true
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1

particle minecraft:firework ~ ~1 ~ 0 0 0 0.1 10 force

data merge block -124 61 -11 {auto:1b}
tag @s remove SkillReady1