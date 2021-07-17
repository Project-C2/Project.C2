tag @s add -118-this
execute if entity @a[tag=-118-selecting,limit=1] as @a[tag=-118-selecting] if score @s playerNumber = @a[tag=-118-this,limit=1] counter run tag @s remove -118-selecting

tellraw @s ["",{"text":"選択が解除された！","color":"red"}]
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0
title @s actionbar [{"text":""}]
scoreboard players reset @s counter
tag @s remove -118-this

tag @s remove -118-0-death