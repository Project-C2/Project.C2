tag @s add 118_0_anchor--
execute if entity @a[tag=118_0_selecting,limit=1] as @a[tag=118_0_selecting] if score @s playerNumber = @a[tag=118_0_anchor--,limit=1] counter run tag @s remove 118_0_selecting

tellraw @s ["",{"text":"選択が解除された！","color":"red"}]
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0
title @s actionbar [{"text":""}]
scoreboard players reset @s counter
scoreboard players reset @s subcounter
scoreboard players reset @s counter_1
scoreboard players reset @s counter_2
tag @s remove 118_0_anchor--