#CT
scoreboard players set @s CT3 900
#効果
#共通
playsound minecraft:entity.skeleton_horse.death master @a ~ ~ ~
particle minecraft:dust 0 41611 0 2 ~ ~1 ~ 1 1 1 0 50

execute if entity @s[team=Red] run effect give @e[distance=..4,team=Blue] minecraft:slowness 5 2
execute if entity @s[team=Blue] run effect give @e[distance=..4,team=Red] minecraft:slowness 5 2
execute if entity @s[team=Red] run scoreboard players remove @e[distance=..4,team=Blue] CT1 5
execute if entity @s[team=Red] run scoreboard players remove @e[distance=..4,team=Blue] CT2 5
execute if entity @s[team=Red] run scoreboard players remove @e[distance=..4,team=Blue] CT3 5
execute if entity @s[team=Blue] run scoreboard players remove @e[distance=..4,team=Red] CT1 5
execute if entity @s[team=Blue] run scoreboard players remove @e[distance=..4,team=Red] CT2 5
execute if entity @s[team=Blue] run scoreboard players remove @e[distance=..4,team=Red] CT3 5
#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
scoreboard players add @s counter_3 1
tellraw @s[scores={counter_3=10}] ["",{"text":"\u8cb4\u65b9\u306f","color":"dark_red"},{"text":"\u52e4\u52c9","bold":true,"underlined":true,"color":"dark_green"},{"text":"\u306e\u5fc3\u3092\u5931\u3063\u305f\u3002","color":"dark_red"}]