
scoreboard players set @s counter_1 1
scoreboard players set @s counter_2 3
scoreboard players set @s counter_3 4
scoreboard players set @s counter_4 10
scoreboard players set @s counter_5 9
scoreboard players reset @s Mana
scoreboard players reset @s counter
scoreboard players set @s counter_6 1
execute unless score @s counter_7 matches 1.. run scoreboard players set @s counter_7 1
scoreboard players set @s counter_8 0
scoreboard players set @s counter_9 0
scoreboard players set @s shieldBlock 0
scoreboard players set @s stockcounter 9
scoreboard players set @s sdi_d_alifetime 1

loot replace entity @s enderchest.0 loot project-c:neac/106/weapon/01
loot replace entity @s enderchest.1 loot project-c:neac/106/skill/04
loot replace entity @s enderchest.2 loot project-c:neac/106/skill/10
loot replace entity @s enderchest.3 loot project-c:neac/106/skill/09

tag @s add 106_change_setup
function project-c:jobaction/106/change_keep

function project-c:jobaction/106/items/gui/set