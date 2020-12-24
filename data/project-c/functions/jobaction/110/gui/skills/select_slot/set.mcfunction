#アイテム表示
data remove block 0 0 0 Items[]
scoreboard players operation @s subcounter = #110- counter_3
execute if score #110- counter_3 matches 1 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p1/1
execute if score #110- counter_3 matches 2 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p1/2
execute if score #110- counter_3 matches 3 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p1/3
execute if score #110- counter_3 matches 4 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p1/4
execute if score #110- counter_3 matches 5 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p2/5
execute if score #110- counter_3 matches 6 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p2/6
execute if score #110- counter_3 matches 7 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p2/7
execute if score #110- counter_3 matches 8 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p2/8
execute if score #110- counter_3 matches 9 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p3/9
execute if score #110- counter_3 matches 10 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p3/10
execute if score #110- counter_3 matches 11 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p3/11
execute if score #110- counter_3 matches 12 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p3/12
execute if score #110- counter_3 matches 13 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p4/13
execute if score #110- counter_3 matches 14 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p4/14
execute if score #110- counter_3 matches 15 run loot replace block 0 0 0 container.0 loot project-c:wnkm/110/skills/p4/15

data modify block 0 0 0 Items[{tag:{110skill:1b}}].tag.110GUI set value 1b
data remove block 0 0 0 Items[{tag:{110skill:1b}}].tag.110skillSlot
data remove block 0 0 0 Items[{tag:{110skill:1b}}].tag.110skillID
data remove block 0 0 0 Items[{tag:{110skill:1b}}].tag.110skill


loot replace block 0 0 0 container.2 loot project-c:wnkm/110/page/slot1
loot replace block 0 0 0 container.4 loot project-c:wnkm/110/page/slot2
loot replace block 0 0 0 container.6 loot project-c:wnkm/110/page/slot3
loot replace block 0 0 0 container.8 loot project-c:wnkm/110/page/cancel

clear @s #project-c:neac/all{110GUI:1b}
loot replace entity @s container.27 9 mine 0 0 0 minecraft:air{inv_copy:1b}
data remove block 0 0 0 Items[]
tag @s remove 110SelectSkillSlot1
tag @s add 110SelectSkillSlot2
