#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 900

#スキル効果
#共通
execute if entity @a[team=Red] as @a[team=Red,distance=..7,tag=Battle] at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 2 300
execute if entity @a[team=Blue] as @a[team=Blue,distance=..7,tag=Battle] at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 2 300
execute if entity @a[team=Red] as @a[team=Red,distance=..7,tag=Battle] at @s run effect give @s minecraft:regeneration 2 3 false
execute if entity @a[team=Blue] as @a[team=Blue,distance=..7,tag=Battle] at @s run effect give @s minecraft:regeneration 2 3 false


playsound minecraft:block.portal.trigger master @a ~ ~ ~ 3 2
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 3 1

#リセット
tag @s remove SkillReady2