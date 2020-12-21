#CT
scoreboard players set @s counter_1 40
scoreboard players set @s usedSkill 0

#スキル効果
#共通
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 2
particle minecraft:firework ~ ~ ~ 0 0 0 0.5 5 force @a
scoreboard players set @s counter_2 0

execute as @s[team=Red] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["062-slash","062-slashR"],Marker:1b}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["062-slash","062-slashB"],Marker:1b}
execute as @s[team=Red] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["062-slash","062-slashR","062-hanrei2"],Marker:1b}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["062-slash","062-slashB","062-hanrei2"],Marker:1b}


execute as @s at @s run teleport @e[limit=2,sort=nearest,tag=062-slash] ^ ^1 ^ ~ ~

execute as @e[limit=1,sort=nearest,tag=062-hanrei] at @s run teleport @e[tag=062-hanrei2,sort=nearest,limit=1] ~ ~1 ~



data merge block -111 5 31 {auto:1b}