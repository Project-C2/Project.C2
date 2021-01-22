#判定
#CT
scoreboard players remove @s stockcounter 100
scoreboard players set @s[scores={stockcounter=..140}] counter_3 0
scoreboard players set @s CT1 1180
scoreboard players set @s usedSkill 1
scoreboard players set @s counter_1 9

#スキル効果
#共通
tp @s @s
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["064-strafe"],Marker:1b}
teleport @e[tag=064-strafe,limit=1] @s

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0
particle minecraft:explosion ^ ^1 ^ 0 0 0 1 3
effect give @s slow_falling 2 0 true
effect give @s levitation 1 0 true
effect give @s speed 1 0 true

#リセット
tag @s remove SkillReady1
data merge block -85 2 31 {auto:1b}