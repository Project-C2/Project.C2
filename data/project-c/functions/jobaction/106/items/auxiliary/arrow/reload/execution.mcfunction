#リロード実行
clear @s minecraft:arrow
scoreboard players set @s stockcounter 0
execute at @s run playsound minecraft:block.chest.locked master @s ~ ~ ~ 10 0.7
title @s times 0 100 0
title @s title ["",{"text":""}]
title @s subtitle ["",{"text":"Reloading","bold":true,"color":"dark_green"}]
#execute run scoreboard players set @s arrow_reload 100
execute if entity @s[tag=106_arrow_reload_check] run tag @s remove 106_arrow_reload_check
#tag @s remove arrow_reload