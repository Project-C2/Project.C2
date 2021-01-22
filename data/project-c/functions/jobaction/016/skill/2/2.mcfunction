#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 1180
scoreboard players remove @s Mana 18
scoreboard players set @s counter_1 0
scoreboard players set @s counter_3 0
#スキル効果
#共通
execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {Team:"RedDummy",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["016-Dein2","016-DeinF"]}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {Team:"BlueDummy",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["016-Dein2","016-DeinF"]}
teleport @e[limit=1,sort=nearest,tag=016-DeinF] @s
teleport @e[limit=1,sort=nearest,tag=016-DeinF] ~ ~1 ~

tellraw @s ["",{"selector":"@s"},{"text":"は ライデインを となえた！","bold":true}]

playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 2 0.75
data merge block 73 5 -122 {auto:1b}

#リセット
tag @s remove SkillReady2