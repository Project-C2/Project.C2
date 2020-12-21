execute as @e[tag=13ST] if score @s playerNumber = @p playerNumber run tp @p @s
gamemode adventure @s
tellraw @s [{"text":"テレポートに失敗した...","color":"gray"}]
tag @s remove STNG