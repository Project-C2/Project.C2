#リロード処理
scoreboard players set #106_max_arrow counter 7
execute if entity @s[scores={counter_2=6}] run scoreboard players add #106_max_arrow counter 3
scoreboard players operation @s stockcounter = #106_max_arrow counter
scoreboard players reset #106_max_arrow
execute if entity @s[scores={counter_1=4..5}] run tag @s add 106_has_items_use_arrow
execute if entity @s[tag=106_has_items_use_arrow] run function project-c:jobaction/106/items/auxiliary/arrow/set
execute at @s run playsound minecraft:entity.villager.work_fletcher master @s ~ ~ ~ 1 1
title @s times 0 10 10
title @s title ["",{"text":""}]
title @s subtitle ["",{"text":"Reload Complete","bold":true,"color":"aqua"}]
scoreboard players reset @s MagicFatigue
tag @s remove 106_has_items_use_arrow