execute unless score @s stockcounter matches 2.. run loot replace entity @s container.2 loot project-c:wnkm/104/2-1
execute if score @s stockcounter matches 2.. run loot replace entity @s container.2 loot project-c:wnkm/104/2-2
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
