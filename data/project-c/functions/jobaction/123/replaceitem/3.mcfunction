execute unless score @s stockcounter matches 2.. run loot replace entity @s container.3 loot project-c:wnkm/123/3-1
execute if score @s stockcounter matches 2.. run loot replace entity @s container.3 loot project-c:wnkm/123/3-2
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3