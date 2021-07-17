tag @s remove 106_skill_setup


function project-c:jobaction/106/items/skill/04/auxiliary/check/0
function project-c:jobaction/106/items/skill/11/auxiliary/check/0


execute if entity @s[tag=SkillDelay1] run tag @s remove SkillDelay1
execute if entity @s[tag=SkillDelay2] run tag @s remove SkillDelay2
execute if entity @s[tag=SkillDelay3] run tag @s remove SkillDelay3

execute if entity @s[tag=!SkillReady1] at @s if score @s CT1 matches 1200.. run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
execute if entity @s[tag=!SkillReady1] at @s if score @s CT1 matches 1200.. run tag @s add SkillReady1


execute if entity @s[tag=!SkillReady2] at @s if score @s CT2 matches 1200.. run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
execute if entity @s[tag=!SkillReady2] at @s if score @s CT2 matches 1200.. run tag @s add SkillReady2


execute if entity @s[tag=!SkillReady3] at @s if score @s CT3 matches 1200.. run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
execute if entity @s[tag=!SkillReady3] at @s if score @s CT3 matches 1200.. run tag @s add SkillReady3




execute if score @s[tag=!SkillDelay1] CT1 matches 1200.. store result score #106-item counter run scoreboard players get @s counter_3
execute if entity @s[tag=!SkillDelay1] run function project-c:jobaction/106/items/skill/loot_before

execute if score @s[tag=!SkillDelay2] CT2 matches 1200.. store result score #106-item counter run scoreboard players get @s counter_4
execute if entity @s[tag=!SkillDelay2] run function project-c:jobaction/106/items/skill/loot_before

execute if score @s[tag=!SkillDelay3] CT3 matches 1200.. store result score #106-item counter run scoreboard players get @s counter_5
execute if entity @s[tag=!SkillDelay3] run function project-c:jobaction/106/items/skill/loot_before

