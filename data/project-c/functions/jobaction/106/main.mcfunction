#実行者     -> jobNumber = 106
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> 選択ウェポン用
#counter_2    -> 選択サポート用
#counter_3    -> 選択スキルスロット1用
#counter_4    -> 選択スキルスロット2用
#counter_5    -> 選択スキルスロット3用
#subcounter   -> 


scoreboard players reset @s usedSkill
execute if entity @s[scores={counter_1=..0}] run function project-c:jobaction/106/change

execute if entity @s[advancements={project-c:neac/inventory_changed=true}] run function project-c:jobaction/106/inventory_changed

execute if entity @s[scores={drop2=1..}] run function project-c:jobaction/106/drop



#execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run tag @s add 106_skill_setup
#execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run tag @s add 106_skill_setup
#execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run tag @s add 106_skill_setup
#execute if entity @s[tag=106_skill_setup] run function project-c:jobaction/106/items/skill/setup



scoreboard players reset @s[scores={drop2=1..}] drop2
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
