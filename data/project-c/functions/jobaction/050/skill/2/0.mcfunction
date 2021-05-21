#CT
scoreboard players set @s CT2 1040
#スキル効果
#共通
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0
particle explosion ~ ~1 ~ 0 0 0 0 3

execute as @s[team=Red] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["128-Charge","128-ChargeR"],Marker:1b}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["128-Charge","128-ChargeB"],Marker:1b}

execute as @s at @s run teleport @e[limit=1,sort=nearest,tag=128-Charge] ^ ^1 ^ ~ ~

#リセット
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block -98 61 -11 {auto:1b}