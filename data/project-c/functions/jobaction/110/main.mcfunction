#実行者     -> jobNumber = 110
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> メイン武器のスキル番号
#counter_2    -> スキル1のスキル番号
#counter_3    -> スキル2のスキル番号
#counter_4    -> スキル3のスキル番号
#counter_5    -> 
#counter_6    -> 
#counter_7    -> 
#counter_8    -> 
#counter_9    -> 加護のスキル番号
#subcounter   -> 


scoreboard players reset @s usedSkill

execute if entity @s[tag=!Battle,advancements={project-c:neac/inventory_changed=true}] run function project-c:jobaction/110/inventory_changed

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/110/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/110/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/110/replaceitem/3
execute if entity @s[tag=110_skill_setup] run function project-c:jobaction/110/items/skill/setup


scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={drop2=1..}] drop2
