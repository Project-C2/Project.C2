clear @s #project-c:neac/all{115skillID:0b}
loot replace block 0 0 0 container.0 loot project-c:wnkm/115/0

execute if score @s counter_6 matches 1 run data modify block 0 0 0 Items[0].id set value "minecraft:iron_axe"
execute if score @s counter_6 matches 2 run data modify block 0 0 0 Items[0].id set value "minecraft:diamond_axe"
execute if score @s counter_6 matches 3 run data modify block 0 0 0 Items[0].id set value "minecraft:netherite_axe"

execute if score @s counter_1 matches 1 run data modify block 0 0 0 Items[0].tag.Enchantments append value {id:"minecraft:sharpness",lvl:3s}
execute if score @s counter_2 matches 1 run data modify block 0 0 0 Items[0].tag.Enchantments append value {id:"minecraft:fire_aspect",lvl:1s}
execute if score @s counter_3 matches 1 run data modify block 0 0 0 Items[0].tag.Enchantments append value {id:"minecraft:quick_charge",lvl:1s}
execute if score @s counter_1 matches 1 run data modify block 0 0 0 Items[0].tag.display.Lore append value '[{"text":"Sharp","color":"gray","italic":false},{"text":"-","color":"dark_gray"},{"text":"ダメージ増加 Ⅲ","color":"gray","italic":false}]'
execute if score @s counter_2 matches 1 run data modify block 0 0 0 Items[0].tag.display.Lore append value '[{"text":"Flame","color":"red","italic":false},{"text":"-","color":"dark_gray"},{"text":"火属性 Ⅰ","color":"gray","italic":false}]'
execute if score @s counter_3 matches 1 run data modify block 0 0 0 Items[0].tag.display.Lore append value '[{"text":"Quick","color":"green","italic":false},{"text":"-","color":"dark_gray"},{"text":"斧を射出時CT回復、命中時CT回復","color":"gray","italic":false}]'
execute if score @s counter_4 matches 1 run data modify block 0 0 0 Items[0].tag.display.Lore append value '[{"text":"Stan","color":"gold","italic":false},{"text":"-","color":"dark_gray"},{"text":"命中した敵にスタン","color":"gray","italic":false}]'
execute if score @s counter_5 matches 1 run data modify block 0 0 0 Items[0].tag.display.Lore append value '[{"text":"Double","color":"aqua","italic":false},{"text":"-","color":"dark_gray"},{"text":"ダメージ後追撃または斧を2本射出","color":"gray","italic":false}]'


loot replace entity @s container.0 1 mine 0 0 0 minecraft:air{inv_copy:1b}
data remove block 0 0 0 Items[]

loot replace entity @s container.1 loot project-c:wnkm/115/1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1