#判定
#CT
scoreboard players set @s CT1 0
scoreboard players set @s usedSkill 1

#スキル効果
#共通

playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 0
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 0

particle flash ~ ~1.52 ~ 0 0 0 0 3 force @a
particle end_rod ~ ~1.52 ~ 1.2 0.7 1.2 0 20 force @a


execute if entity @s[team=Red] run summon armor_stand ~ ~1.75 ~ {Tags:["080-field","080-fieldR"],Invisible:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~1.75 ~ {Tags:["080-field","080-fieldB"],Invisible:1b}

summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["080-SetMCircle","SetMCircle-1"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["080-SetMCircle","SetMCircle-2"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["080-SetMCircle","SetMCircle-3"]}

teleport @e[limit=1,sort=nearest,tag=080-SetMCircle,tag=SetMCircle-1] ~ ~0.5 ~ ~120 0
teleport @e[limit=1,sort=nearest,tag=080-SetMCircle,tag=SetMCircle-2] ~ ~0.5 ~ ~240 0
teleport @e[limit=1,sort=nearest,tag=080-SetMCircle,tag=SetMCircle-3] ~ ~0.5 ~ ~360 0

#リセット
tag @s remove SkillReady1
data merge block 107 2 31 {auto:1b}
data merge block 107 5 31 {auto:1b}