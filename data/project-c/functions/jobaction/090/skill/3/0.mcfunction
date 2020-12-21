#判定
#CT
scoreboard players set @s usedSkill 3
scoreboard players set @s CT3 800

#スキル効果
#共通
particle minecraft:damage_indicator ~ ~ ~ 3 3 3 0 100
playsound minecraft:entity.horse.death master @a ~ ~ ~ 2 0
playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 0

execute if entity @s[team=Red] run w @a[team=Blue,distance=..8] ロードオブテラー
execute if entity @s[team=Blue] run w @a[team=Red,distance=..8] ロードオブテラー

execute if entity @s[team=Red] run effect give @e[team=Blue,distance=..8,tag=Battle] instant_damage 1 0
execute if entity @s[team=Blue] run effect give @e[team=Red,distance=..8,tag=Battle] instant_damage 1 0

execute if entity @s[team=Red] run effect give @e[team=Blue,distance=..8,tag=Battle] minecraft:blindness 3 0
execute if entity @s[team=Blue] run effect give @e[team=Red,distance=..8,tag=Battle] minecraft:blindness 3 0

#リセット
tag @s remove SkillReady3