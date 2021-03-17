scoreboard players set @s usedSkill 3
scoreboard players set @s CT3 600



execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["122-phycobeamF","122-phycobeamFR"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["122-phycobeamF","122-phycobeamFB"],Marker:1b}

teleport @e[limit=1,sort=nearest,tag=122-phycobeamF] ^ ^1.5 ^1 ~ ~

scoreboard players operation @e[limit=1,sort=nearest,tag=122-phycobeamF] counter_1 = @s counter_5

playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 3 0
scoreboard players set @s counter_5 0
tag @s remove SkillReady3
data merge block 96 61 -62 {auto:1b}