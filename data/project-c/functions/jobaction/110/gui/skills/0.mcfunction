

#GUIリセット
execute if score @s counter_8 matches 1 run function project-c:jobaction/110/gui/skills/p1
execute if score @s counter_8 matches 2 run function project-c:jobaction/110/gui/skills/p5
execute if score @s counter_8 matches 3 run function project-c:jobaction/110/gui/skills/p2
execute if score @s counter_8 matches 4 run function project-c:jobaction/110/gui/skills/p3
execute if score @s counter_8 matches 5 run function project-c:jobaction/110/gui/skills/p4

execute if score @s counter_8 matches 2.. run loot replace block 0 0 0 container.3 loot project-c:wnkm/110/page/back
execute if score @s counter_8 matches ..4 run loot replace block 0 0 0 container.8 loot project-c:wnkm/110/page/next

scoreboard players operation #110- counter_5 = @s counter_2
execute if score #110- counter_5 matches 1.. run function project-c:jobaction/110/gui/skills/view_selecting
scoreboard players operation #110- counter_5 = @s counter_3
execute if score #110- counter_5 matches 1.. run function project-c:jobaction/110/gui/skills/view_selecting
scoreboard players operation #110- counter_5 = @s counter_4
execute if score #110- counter_5 matches 1.. run function project-c:jobaction/110/gui/skills/view_selecting


