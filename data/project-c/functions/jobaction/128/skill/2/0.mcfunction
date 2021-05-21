#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 900

scoreboard players add @s counter_4 1
scoreboard players set @s counter_5 51
scoreboard players set @s counter_6 140

#スキル効果
#共通
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 2
particle explosion ~ ~1 ~ 0 0 0 0 3

effect give @s slowness 1 2 true

execute as @s[team=Red] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["128-Charge","128-ChargeR"]}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["128-Charge","128-ChargeB"]}

scoreboard players add @e[tag=128-Charge,limit=1,sort=nearest] counter_4 0

execute as @s at @s run teleport @e[limit=1,sort=nearest,tag=128-Charge] ^ ^0.5 ^ ~ ~

#リセット
tag @s remove SkillReady2
data merge block -98 61 -11 {auto:1b}