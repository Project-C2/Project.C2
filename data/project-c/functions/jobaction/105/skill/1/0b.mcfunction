execute store result score #105- subcounter run data get entity @s Rotation[0] 100
scoreboard players set #105- counter_2 -6000
scoreboard players set #105- counter 0
function project-c:jobaction/105/skill/1/0b_r
scoreboard players reset #105-
execute if entity @s[team=Red] run tag @e[tag=105__] add 105_1R
execute if entity @s[team=Blue] run tag @e[tag=105__] add 105_1B
tag @e[tag=105__] remove 105__

scoreboard players set @s CT1 960
execute unless score @s counter_5 matches 1 run scoreboard players operation @s counter_1 *= #3 counter
execute unless score @s counter_5 matches 1 run scoreboard players operation @s counter_1 /= #2 counter
scoreboard players operation @s CT1 += @s counter_1
execute if score @s CT1 matches 960..979 run replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 12
execute if score @s CT1 matches 980..999 run replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 11
execute if score @s CT1 matches 1000..1019 run replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 10

scoreboard players set @s counter_1 40
data merge block -112 61 -62 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
