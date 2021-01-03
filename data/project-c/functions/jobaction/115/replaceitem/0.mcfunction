clear @s bow
clear @s carrot_on_a_stick
execute unless score @s counter_7 matches 1.. run loot replace entity @s weapon.offhand loot project-c:wnkm/115/bow
execute if score @s counter_7 matches 1.. run loot replace entity @s weapon.offhand loot project-c:wnkm/115/rod
scoreboard players reset @s drop