#判定
#CT
scoreboard players set @s CT1 1000

#スキル効果
#共通
execute if entity @s[team=Red] run effect clear @a[team=Red,distance=..16] minecraft:absorption
execute if entity @s[team=Blue] run effect clear @a[team=Blue,distance=..16] minecraft:absorption

effect clear @s minecraft:resistance

scoreboard players set @s subcounter 0
#リセット
tag @s remove SkillReady1