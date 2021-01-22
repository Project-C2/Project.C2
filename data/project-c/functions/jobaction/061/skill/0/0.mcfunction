#CT
scoreboard players remove @s stockcounter 60
scoreboard players set @s[scores={stockcounter=..60}] stockcounter 0
scoreboard players set @s usedSkill 0

#スキル効果
#共通
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1
particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force @a

execute as @s[team=Red] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["061-fire","061-fireR"],Marker:1b}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["061-fire","061-fireB"],Marker:1b}

execute as @s at @s run teleport @e[limit=1,sort=nearest,tag=061-fire] ^ ^1 ^ ~ ~

data merge block 129 5 20 {auto:1b}