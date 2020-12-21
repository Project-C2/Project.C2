#CT
scoreboard players set @s counter_1 50
scoreboard players set @s usedSkill 4

#スキル効果
#共通
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 2 0
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.5 250 force @a
scoreboard players set @s counter_2 0

execute as @s[team=Red] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["062-Cslash","062-CslashR","062-Cslash1"],Marker:1b}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["062-Cslash","062-CslashB","062-Cslash1"],Marker:1b}
execute as @s[team=Red] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["062-Cslash","062-CslashR","062-Cslash2"],Marker:1b}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["062-Cslash","062-CslashB","062-Cslash2"],Marker:1b}
execute as @s[team=Red] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["062-Cslash","062-CslashR","062-Cslash3"],Marker:1b}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["062-Cslash","062-CslashB","062-Cslash3"],Marker:1b}

execute as @s at @s run teleport @e[limit=1,sort=nearest,tag=062-Cslash1] ^ ^1 ^ ~ ~
execute as @s at @s run teleport @e[limit=1,sort=nearest,tag=062-Cslash2] ^ ^1 ^ ~15 ~
execute as @s at @s run teleport @e[limit=1,sort=nearest,tag=062-Cslash3] ^ ^1 ^ ~-15 ~

data merge block -111 8 31 {auto:1b}