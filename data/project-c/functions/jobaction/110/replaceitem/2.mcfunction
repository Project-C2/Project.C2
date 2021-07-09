clear @s #project-c:neac/all{110skill:1b,110skillSlot:2b}
data remove block 0 0 0 Items[]

scoreboard players operation #110- counter = @s counter_3
scoreboard players set #110- subcounter 2
function project-c:jobaction/110/replaceitem/skills_set
loot replace entity @s container.2 1 mine 0 0 0 minecraft:air{inv_copy:1b}
data remove block 0 0 0 Items[]

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
