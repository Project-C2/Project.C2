execute if data entity @s[gamemode=!spectator] {SelectedItem:{tag:{110weapon:1b}}} store result score #110- counter_1 run data get entity @s SelectedItem.tag.110weaponID
execute if score #110- counter_1 matches 2 unless score @s counter matches 1.. run function project-c:jobaction/110/weapons/2/0
execute if score #110- counter_1 matches 3 if score @s stockcounter matches 1.. run function project-c:jobaction/110/weapons/3/0
execute if score #110- counter_1 matches 7 unless score @s counter matches 1.. run function project-c:jobaction/110/weapons/7/0
execute if score #110- counter_1 matches 1.. run scoreboard players set #110- counter_1 22

execute if data entity @s[gamemode=!spectator] {SelectedItem:{tag:{110skill:1b}}} store result score #110- counter_1 run data get entity @s SelectedItem.tag.110skillID
execute if score #110- counter_1 matches 1.. store result score #110- counter_2 run data get entity @s SelectedItem.tag.110skillSlot
execute if score #110- counter_1 matches 2 run function project-c:jobaction/110/skills/02/0
execute if score #110- counter_1 matches 1 if entity @s[tag=110fireball_addable] run function project-c:jobaction/110/skills/01/2
execute if score #110- counter_1 matches 1 unless entity @s[tag=110fireball_addable] run function project-c:jobaction/110/skills/01/0
execute if score #110- counter_1 matches 3 run function project-c:jobaction/110/skills/03/0
execute if score #110- counter_1 matches 4 run function project-c:jobaction/110/skills/04/0
execute if score #110- counter_1 matches 5 run function project-c:jobaction/110/skills/05/0
execute if score #110- counter_1 matches 6 run function project-c:jobaction/110/skills/06/0
execute if score #110- counter_1 matches 7 run function project-c:jobaction/110/skills/07/0
execute if score #110- counter_1 matches 8 run function project-c:jobaction/110/skills/08/0
execute if score #110- counter_1 matches 13 run function project-c:jobaction/110/skills/13/0
execute if score #110- counter_1 matches 14 run function project-c:jobaction/110/skills/14/0
execute if score #110- counter_1 matches 15 run function project-c:jobaction/110/skills/15/0
execute if score #110- counter_1 matches 16 run function project-c:jobaction/110/skills/16/0
execute if score #110- counter_1 matches 17 if entity @s[tag=110denkou_addable] run function project-c:jobaction/110/skills/17/2
execute if score #110- counter_1 matches 17 unless entity @s[tag=110denkou_addable] run function project-c:jobaction/110/skills/17/0
execute if score #110- counter_1 matches 18 run function project-c:jobaction/110/skills/18/0
execute if score #110- counter_1 matches 19 run function project-c:jobaction/110/skills/19/0
execute if score #110- counter_1 matches 20 run function project-c:jobaction/110/skills/20/0

execute if score #110- counter_1 matches 1.. if score #110- counter_2 matches 1 run scoreboard players operation @s CT1 = #110- counter_3
execute if score #110- counter_1 matches 1.. if score #110- counter_2 matches 1 if score #110- counter_3 matches ..1200 run clear @s #project-c:neac/all{110skillSlot:1b}
execute if score #110- counter_1 matches 1.. if score #110- counter_2 matches 1 if score #110- counter_3 matches ..1200 run tag @s remove SkillReady1
execute if score #110- counter_1 matches 1.. if score #110- counter_2 matches 2 run scoreboard players operation @s CT2 = #110- counter_3
execute if score #110- counter_1 matches 1.. if score #110- counter_2 matches 2 if score #110- counter_3 matches ..1200 run clear @s #project-c:neac/all{110skillSlot:2b}
execute if score #110- counter_1 matches 1.. if score #110- counter_2 matches 2 if score #110- counter_3 matches ..1200 run tag @s remove SkillReady2
execute if score #110- counter_1 matches 1.. if score #110- counter_2 matches 3 run scoreboard players operation @s CT3 = #110- counter_3
execute if score #110- counter_1 matches 1.. if score #110- counter_2 matches 3 if score #110- counter_3 matches ..1200 run clear @s #project-c:neac/all{110skillSlot:3b}
execute if score #110- counter_1 matches 1.. if score #110- counter_2 matches 3 if score #110- counter_3 matches ..1200 run tag @s remove SkillReady3

execute if score #110- counter_2 matches 1 if score #110- counter_3 matches 960 run item replace entity @s container.1 with compass{display:{Name:'{"text":"CoolTime"}'}} 12
execute if score #110- counter_2 matches 2 if score #110- counter_3 matches 960 run item replace entity @s container.2 with compass{display:{Name:'{"text":"CoolTime"}'}} 12
execute if score #110- counter_2 matches 3 if score #110- counter_3 matches 960 run item replace entity @s container.3 with compass{display:{Name:'{"text":"CoolTime"}'}} 12

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset #110-