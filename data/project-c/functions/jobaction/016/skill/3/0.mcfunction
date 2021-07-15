#判定
#CT
scoreboard players set @s usedSkill 3
scoreboard players set @s CT3 600

#スキル効果
#共通
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 1 100
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0
execute if entity @s[team=Red] run summon armor_stand ^ ^1 ^5 {Team:"RedDummy",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["016-Madante","016-MadanteF"]}
execute if entity @s[team=Blue] run summon armor_stand ^ ^1 ^5 {Team:"BlueDummy",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["016-Madante","016-MadanteF"]}

scoreboard players operation @e[tag=016-MadanteF,limit=1] counter = @s Mana

tellraw @s ["",{"selector":"@s"},{"text":"は マダンテを となえた！","bold":true}]
scoreboard players set @s Mana 0
tag @e[tag=016-MadanteF] remove 016-MadanteF
data merge block 75 2 -122 {auto:1b}
#リセット
tag @s remove SkillReady3