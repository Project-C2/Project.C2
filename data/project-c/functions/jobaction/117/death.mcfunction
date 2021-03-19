scoreboard players operation #117- playerNumber = @s playerNumber
execute as @e[tag=117zombie] if score @s playerNumber = #117- playerNumber run kill @s
scoreboard players reset #117-
scoreboard players set @s counter_8 0