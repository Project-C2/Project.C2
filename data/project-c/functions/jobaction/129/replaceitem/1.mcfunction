loot replace block 0 0 0 container.0 loot project-c:neac/129/1
item replace entity @s enderchest.1 from block 0 0 0 container.0
execute unless score @s counter_1 matches 1.. run data modify block 0 0 0 Items[{Slot:0b}].Count set value 2b
loot replace entity @s container.1 1 mine 0 0 0 air{inv_copy:1b}
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1