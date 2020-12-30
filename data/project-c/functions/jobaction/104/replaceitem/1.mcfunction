execute unless score @s counter_1 matches 1 run loot replace entity @s container.1 loot project-c:wnkm/104/1-0
execute if score @s counter_1 matches 1 run loot replace entity @s container.1 loot project-c:wnkm/104/1-1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1