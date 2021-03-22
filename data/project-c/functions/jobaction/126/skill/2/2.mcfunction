#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 1040

#スキル効果
#共通

execute as @s[team=Red] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-hassummoned","126-graif","126-graifRed"],Marker:1b}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-hassummoned","126-graif","126-graifBlue"],Marker:1b}

scoreboard players operation @e[limit=1,sort=nearest,tag=126-hassummoned] playerNumber = @s playerNumber
teleport @e[tag=126-graif,limit=1,sort=nearest] ^ ^1 ^1.5 ~ ~

tag @e[tag=126-hassummoned] remove 126-hassummoned


particle minecraft:firework ~ ~1 ~ 0 0 0 0.3 30 force @a


playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 2

particle minecraft:firework ~ ~1 ~ 0 0 0 0.3 30 force @a

execute as @e[tag=126-graif] at @s run function project-c:jobaction/126/skill/2/1laser

#リセット
tag @s remove SkillReady2