#CT
scoreboard players set @s CT3 0
tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"幻世「ザ・ワールド」","bold":true}]
particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 1 100 force
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 0
particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1
particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 1 30 force
#スキル効果
#共通

execute as @s[team=Red] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["066-world","066-worldRed","066-world1"],Silent:1,Marker:1}
execute as @s[team=Blue] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["066-world","066-worldBlue","066-world1"],Silent:1,Marker:1}
execute as @s[team=Red] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["066-world","066-worldRed","066-world2"],Silent:1,Marker:1}
execute as @s[team=Blue] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["066-world","066-worldBlue","066-world2"],Silent:1,Marker:1}
execute as @s[team=Red] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["066-world","066-worldRed","066-world3"],Silent:1,Marker:1}
execute as @s[team=Blue] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["066-world","066-worldBlue","066-world3"],Silent:1,Marker:1}
execute as @s[team=Red] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["066-world","066-worldRed","066-world4"],Silent:1,Marker:1}
execute as @s[team=Blue] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["066-world","066-worldBlue","066-world4"],Silent:1,Marker:1}

teleport @e[tag=!worldcheck,tag=066-world,tag=066-world1,limit=1,sort=nearest] ~ ~ ~ ~ 0
teleport @e[tag=!worldcheck,tag=066-world,tag=066-world2,limit=1,sort=nearest] ~ ~ ~ ~120 30
teleport @e[tag=!worldcheck,tag=066-world,tag=066-world3,limit=1,sort=nearest] ~ ~ ~ ~240 -30
teleport @e[tag=!worldcheck,tag=066-world,tag=066-world4,limit=1,sort=nearest] ~ ~ ~ ~180 0

#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3

data merge block -57 2 31 {auto:1b}