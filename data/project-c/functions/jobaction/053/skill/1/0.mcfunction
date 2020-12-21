#CT
scoreboard players set @s CT1 900
#スキル効果
#共通
scoreboard players set @s counter 50
playsound minecraft:entity.skeleton_horse.death master @a ~ ~ ~ 2 0.75
data merge block 35 2 -20 {auto:1b}
#リセット
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
scoreboard players add @s counter_1 1
tellraw @s[scores={counter_1=10}] ["",{"text":"\u8cb4\u65b9\u306f","color":"dark_red"},{"text":"\u7bc0\u5236","bold":true,"underlined":true,"color":"dark_purple"},{"text":"\u306e\u5fc3\u3092\u5931\u3063\u305f\u3002","color":"dark_red"}]