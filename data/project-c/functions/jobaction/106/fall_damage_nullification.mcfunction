
execute store result score #neac_fall counter run data get entity @s Motion[1] 1000

execute if score #neac_fall counter matches ..-80 unless block ~ ~-3 ~ #project-c:wancomatter/like_air run tag @s add neac_fall_damage_nullification_execute
execute if score #neac_fall counter matches ..-80 unless block ~ ~-2 ~ #project-c:wancomatter/like_air run tag @s add neac_fall_damage_nullification_execute
execute if score #neac_fall counter matches ..-80 unless block ~ ~-1 ~ #project-c:wancomatter/like_air run tag @s add neac_fall_damage_nullification_execute

#execute if score #neac_fall value matches ..-80

execute if entity @s[tag=neac_fall_damage_nullification_execute] store result score #neac_fall_distance counter run data get entity @s FallDistance 100
#execute if entity @s[tag=neac_fall_damage_nullification_execute] if score #neac_fall_distance counter matches 400.. run tag @s add fall_distance400
execute if entity @s[tag=neac_fall_damage_nullification_execute] run scoreboard players reset #neac_fall_distance
execute if entity @s[tag=neac_fall_damage_nullification_execute] run effect give @s[tag=neac_fall_damage_nullification_execute] minecraft:slow_falling 1 0 true
execute if entity @s[tag=neac_fall_damage_nullification_execute] run tag @s add neac_fall_damage_nullification_execute_remove
execute if entity @s[tag=neac_fall_damage_nullification_execute] run tag @s remove neac_fall_damage_nullification_execute

scoreboard players reset #neac_fall