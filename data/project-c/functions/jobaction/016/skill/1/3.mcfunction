#判定
#CT
scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 1180
scoreboard players remove @s Mana 36
scoreboard players set @s counter_1 0
scoreboard players set @s counter_2 0
#スキル効果
#共通
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {Team:"RedDummy",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["016-Mera3","016-MeraF"]}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {Team:"BlueDummy",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["016-Mera3","016-MeraF"]}
tellraw @s ["",{"selector":"@s"},{"text":"は メラゾーマを となえた！","bold":true}]
teleport @e[limit=1,sort=nearest,tag=016-MeraF] @s
teleport @e[limit=1,sort=nearest,tag=016-MeraF] ~ ~1 ~
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 0

tag @e[tag=016-MeraF] remove 016-MeraF

data merge block 71 8 -122 {auto:1b}

#リセット
tag @s remove SkillReady1