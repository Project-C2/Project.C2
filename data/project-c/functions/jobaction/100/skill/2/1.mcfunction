#判定
#CT
scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 1000

#スキル効果
#共通
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 3 0
effect give @s resistance 1 4 true
execute if entity @s[team=Red] run effect give @e[team=Blue,distance=..3] instant_damage 1 0
execute if entity @s[team=Blue] run effect give @e[team=Red,distance=..3] instant_damage 1 0

particle minecraft:dust 0 0.5 0 3 ^2 ^ ^2 0 3 0 1 40
particle minecraft:dust 0 0.5 0 3 ^2 ^ ^-2 0 3 0 1 40
particle minecraft:dust 0 0.5 0 3 ^ ^ ^ 0 3 0 1 40
particle minecraft:dust 0 0.5 0 3 ^-2 ^ ^2 0 3 0 1 40
particle minecraft:dust 0 0.5 0 3 ^-2 ^ ^-2 0 3 0 1 40

particle minecraft:dust 0 0 0 3 ^ ^0.3 ^ 2 0 2 1 200

#リセット
tag @s remove SkillReady1