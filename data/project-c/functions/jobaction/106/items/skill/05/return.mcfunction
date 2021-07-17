#スキル5
scoreboard players operation #106-- playerNumber = @s playerNumber
execute as @e[tag=106-skill05-stand] if score @s playerNumber = #106-- playerNumber run tag @s add hit
scoreboard players reset #106--

#scoreboard players operation @s damage_resist = @e[tag=hit] damage_resist
#execute if score @s damage_resist matches 1.. run tag @s add magic
gamemode adventure @s
execute at @s run teleport @s @s
execute at @e[tag=hit] run teleport @s ~ ~ ~ ~ ~
execute at @e[tag=hit] run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 1.6
execute at @e[tag=hit] run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1


tp @e[tag=hit] ~ ~-512 ~
kill @e[tag=hit]
tag @e[tag=hit] remove hit