
tellraw @s ["",{"selector": "@a[tag=-118-this]"},{"text":" が死亡した！","color":"red"}]
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0
title @s actionbar ["",{"selector": "@a[tag=-118-this]"},{"text":" が死亡した！","bold": true}]
scoreboard players reset @s counter