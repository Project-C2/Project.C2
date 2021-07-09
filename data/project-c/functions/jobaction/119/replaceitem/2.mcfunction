clear @s minecraft:pink_glazed_terracotta{119skillID:2b}
loot replace entity @s container.2 loot project-c:wnkm/119/2
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
execute unless score @s counter_3 matches 0..1 run scoreboard players set @s counter_3 0
