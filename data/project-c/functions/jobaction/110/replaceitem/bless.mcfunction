clear @s #project-c:neac/all{110blessItem:1b}
clear @s minecraft:carrot_on_a_stick

execute unless score @s counter_9 matches 1..8 run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1b,HideFlags:4}
execute if score @s relic matches 1.. if score @s counter_9 matches 1..8 run scoreboard players set @s relic 0
execute if score @s counter_9 matches 1 run loot replace entity @s container.8 loot project-c:wnkm/110/bless/1
execute if score @s counter_9 matches 1 run loot replace entity @s weapon.offhand loot project-c:wnkm/110/rod/1
execute if score @s counter_9 matches 2 run loot replace entity @s container.8 loot project-c:wnkm/110/bless/2
execute if score @s counter_9 matches 2 run loot replace entity @s weapon.offhand loot project-c:wnkm/110/rod/2
execute if score @s counter_9 matches 3 run loot replace entity @s container.8 loot project-c:wnkm/110/bless/3
execute if score @s counter_9 matches 3 run loot replace entity @s weapon.offhand loot project-c:wnkm/110/rod/3
execute if score @s counter_9 matches 4 run loot replace entity @s container.8 loot project-c:wnkm/110/bless/4
execute if score @s counter_9 matches 4 run loot replace entity @s weapon.offhand loot project-c:wnkm/110/rod/4
execute if score @s counter_9 matches 5 run loot replace entity @s container.8 loot project-c:wnkm/110/bless/5
execute if score @s counter_9 matches 5 run loot replace entity @s weapon.offhand loot project-c:wnkm/110/rod/5
execute if score @s counter_9 matches 6 run loot replace entity @s container.8 loot project-c:wnkm/110/bless/6
execute if score @s counter_9 matches 6 run loot replace entity @s weapon.offhand loot project-c:wnkm/110/rod/6
execute if score @s counter_9 matches 7 run loot replace entity @s container.8 loot project-c:wnkm/110/bless/7
execute if score @s counter_9 matches 7 run loot replace entity @s weapon.offhand loot project-c:wnkm/110/rod/7
execute if score @s counter_9 matches 8 run loot replace entity @s container.8 loot project-c:wnkm/110/bless/8
execute if score @s counter_9 matches 8 run loot replace entity @s weapon.offhand loot project-c:wnkm/110/rod/8
