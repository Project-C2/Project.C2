#スキル5
scoreboard players operation #106_playerNumber counter = @s playerNumber
execute as @e[tag=106_reconnaissance_stand] if score @s playerNumber = #106_playerNumber counter run tag @s add hit
scoreboard players reset #106_playerNumber

gamemode adventure @s
execute at @s run teleport @s @s
execute at @e[tag=hit] run teleport @s ~ ~ ~ ~ ~
execute at @e[tag=hit] run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 1.6
execute at @e[tag=hit] run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1


tp @e[tag=hit] ~ ~-512 ~
kill @e[tag=hit]
tag @e[tag=hit] remove hit