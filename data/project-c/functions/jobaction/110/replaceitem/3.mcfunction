clear @s #project-c:neac/all{110skill:1b,110skillSlot:3b}
data remove block 0 0 0 Items[]

scoreboard players operation #110- counter = @s counter_4
scoreboard players set #110- subcounter 3
function project-c:jobaction/110/replaceitem/skills_set
loot replace entity @s container.3 1 mine 0 0 0 minecraft:air{inv_copy:1b}
data remove block 0 0 0 Items[]

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3
