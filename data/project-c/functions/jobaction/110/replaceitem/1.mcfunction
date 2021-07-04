clear @s #project-c:neac/all{110skill:1b,110skillSlot:1b}
data remove block 0 0 0 Items[]

scoreboard players operation #110- counter = @s counter_2
scoreboard players set #110- subcounter 1
function project-c:jobaction/110/replaceitem/skills_set
loot replace entity @s container.1 1 mine 0 0 0 minecraft:air{inv_copy:1b}
data remove block 0 0 0 Items[]

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1
