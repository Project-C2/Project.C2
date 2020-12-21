#判定
#CT
scoreboard players set @s usedSkill 3
scoreboard players set @s CT3 600

#スキル効果
#共通
scoreboard players set @s CT1 1200
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1

execute if entity @s[scores={counter_3=1..}] run function project-c:jobaction/086/skill/3/1
execute if entity @s[scores={counter_3=1..}] run particle minecraft:sweep_attack ~ ~0.3 ~ 5 5 5 0 100
execute if entity @s[scores={counter_3=1..}] run execute if entity @s[team=Red] run effect give @e[team=Blue,distance=..9] instant_damage 1 0
execute if entity @s[scores={counter_3=1..}] run execute if entity @s[team=Blue] run effect give @e[team=Red,distance=..9] instant_damage 1 0
#リセット
tag @s remove SkillReady3