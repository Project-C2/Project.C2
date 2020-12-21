#CT
scoreboard players set @s CT1 900
scoreboard players set @s usedSkill 1

#スキル効果
#共通

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0
particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force @a
particle minecraft:dust 0 0 1 1 ~ ~1 ~ 1 1 1 1 30 force @a

effect give @s slowness 2 5 true

execute as @s[team=Red] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["061-nano","061-nanoR"],Marker:1b}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["061-nano","061-nanoB"],Marker:1b}

execute as @s at @s run teleport @e[limit=1,sort=nearest,tag=061-nano] ^ ^1 ^ ~ ~

tag @s remove SkillReady1
data merge block 131 5 20 {auto:1b}