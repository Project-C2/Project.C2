tag @s remove 106_skill_setup

execute if entity @s[tag=SkillDelay1] run tag @s remove SkillDelay1
execute if entity @s[tag=SkillDelay2] run tag @s remove SkillDelay2
execute if entity @s[tag=SkillDelay3] run tag @s remove SkillDelay3

execute if entity @s[tag=!SkillReady1] at @s if score @s CT1 matches 1200.. run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
execute if entity @s[tag=!SkillReady1] at @s if score @s CT1 matches 1200.. run tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1

execute if entity @s[tag=!SkillReady2] at @s if score @s CT2 matches 1200.. run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
execute if entity @s[tag=!SkillReady2] at @s if score @s CT2 matches 1200.. run tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2

execute if entity @s[tag=!SkillReady3] at @s if score @s CT3 matches 1200.. run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
execute if entity @s[tag=!SkillReady3] at @s if score @s CT3 matches 1200.. run tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3



execute if score @s counter_3 matches 1 if score @s CT1 matches 1200.. run tag @s add using
execute if score @s counter_4 matches 1 if score @s CT2 matches 1200.. run tag @s add using
execute if score @s counter_5 matches 1 if score @s CT3 matches 1200.. run tag @s add using
execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/01/set
tag @s[tag=using] remove using


execute if score @s counter_3 matches 2 if score @s CT1 matches 1200.. run tag @s add using
execute if score @s counter_4 matches 2 if score @s CT2 matches 1200.. run tag @s add using
execute if score @s counter_5 matches 2 if score @s CT3 matches 1200.. run tag @s add using
execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/02/set
tag @s[tag=using] remove using


execute if score @s counter_3 matches 3 if score @s CT1 matches 1200.. run tag @s add using
execute if score @s counter_4 matches 3 if score @s CT2 matches 1200.. run tag @s add using
execute if score @s counter_5 matches 3 if score @s CT3 matches 1200.. run tag @s add using
execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/03/set
tag @s[tag=using] remove using


execute if score @s[tag=!SkillDelay1] counter_3 matches 4 if score @s CT1 matches 1200.. run tag @s add using
execute if score @s[tag=!SkillDelay2] counter_4 matches 4 if score @s CT2 matches 1200.. run tag @s add using
execute if score @s[tag=!SkillDelay3] counter_5 matches 4 if score @s CT3 matches 1200.. run tag @s add using
execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/04/set
tag @s[tag=using] remove using


execute if score @s counter_3 matches 5 if score @s CT1 matches 1200.. run tag @s add using
execute if score @s counter_4 matches 5 if score @s CT2 matches 1200.. run tag @s add using
execute if score @s counter_5 matches 5 if score @s CT3 matches 1200.. run tag @s add using
execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/05/set
tag @s[tag=using] remove using


execute if score @s counter_3 matches 6 if score @s CT1 matches 1200.. run tag @s add using
execute if score @s counter_4 matches 6 if score @s CT2 matches 1200.. run tag @s add using
execute if score @s counter_5 matches 6 if score @s CT3 matches 1200.. run tag @s add using
execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/06/set
tag @s[tag=using] remove using


execute if score @s counter_3 matches 7 if score @s CT1 matches 1200.. run tag @s add using
execute if score @s counter_4 matches 7 if score @s CT2 matches 1200.. run tag @s add using
execute if score @s counter_5 matches 7 if score @s CT3 matches 1200.. run tag @s add using
execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/07/set
tag @s[tag=using] remove using


execute if score @s counter_3 matches 8 if score @s CT1 matches 1200.. run tag @s add using
execute if score @s counter_4 matches 8 if score @s CT2 matches 1200.. run tag @s add using
execute if score @s counter_5 matches 8 if score @s CT3 matches 1200.. run tag @s add using
execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/08/set
tag @s[tag=using] remove using


execute if score @s counter_3 matches 9 if score @s CT1 matches 1200.. run tag @s add using
execute if score @s counter_4 matches 9 if score @s CT2 matches 1200.. run tag @s add using
execute if score @s counter_5 matches 9 if score @s CT3 matches 1200.. run tag @s add using
execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/09/set
tag @s[tag=using] remove using


execute if score @s counter_3 matches 10 if score @s CT1 matches 1200.. run tag @s add using
execute if score @s counter_4 matches 10 if score @s CT2 matches 1200.. run tag @s add using
execute if score @s counter_5 matches 10 if score @s CT3 matches 1200.. run tag @s add using
execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/10/set
tag @s[tag=using] remove using


execute if score @s[tag=!SkillDelay1] counter_3 matches 11 if score @s CT1 matches 1200.. run tag @s add using
execute if score @s[tag=!SkillDelay2] counter_4 matches 11 if score @s CT2 matches 1200.. run tag @s add using
execute if score @s[tag=!SkillDelay3] counter_5 matches 11 if score @s CT3 matches 1200.. run tag @s add using
execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/11/set
tag @s[tag=using] remove using


execute if score @s counter_3 matches 12 if score @s CT1 matches 1200.. run tag @s add using
execute if score @s counter_4 matches 12 if score @s CT2 matches 1200.. run tag @s add using
execute if score @s counter_5 matches 12 if score @s CT3 matches 1200.. run tag @s add using
execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/12/set
tag @s[tag=using] remove using


execute if score @s counter_3 matches 13 if score @s CT1 matches 1200.. run tag @s add using
execute if score @s counter_4 matches 13 if score @s CT2 matches 1200.. run tag @s add using
execute if score @s counter_5 matches 13 if score @s CT3 matches 1200.. run tag @s add using
execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/13/set
tag @s[tag=using] remove using


execute if score @s counter_3 matches 14 if score @s CT1 matches 1200.. run tag @s add using
execute if score @s counter_4 matches 14 if score @s CT2 matches 1200.. run tag @s add using
execute if score @s counter_5 matches 14 if score @s CT3 matches 1200.. run tag @s add using
execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/14/set
tag @s[tag=using] remove using