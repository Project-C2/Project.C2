execute store result entity @s Pos[1] double 0.1 run scoreboard players get @s counter_2
scoreboard players operation #123- playerNumber = @s playerNumber
execute as @e[scores={jobNumber=123}] if score @s playerNumber = #123- playerNumber run tag @s add user
scoreboard players reset #123-
execute as @a[tag=user] run gamemode adventure @s
execute at @s run tp @a[tag=user] ~ ~ ~ ~ 0
tag @a[tag=user] remove user

kill @s
