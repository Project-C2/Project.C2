#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 800

#スキル効果
#共通
particle end_rod ~ ~0.3 ~ 0 0 0 0.1 100 
playsound minecraft:item.totem.use master @a ~ ~ ~ 3 0
playsound minecraft:item.totem.use master @a ~ ~ ~ 3 0

execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {Team:"RedDummy",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["072-Musasi"]}

execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {Team:"BlueDummy",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["072-Musasi"]}

teleport @e[limit=1,sort=nearest,tag=072-Musasi] ^ ^1.5 ^1 ~ ~

#リセット
tag @s remove SkillReady2
data merge block 13 2 31 {auto:1b}