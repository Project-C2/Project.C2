#スキル11

scoreboard players operation #106_playerNumber counter = @s playerNumber
execute as @a if score @s playerNumber = #106_playerNumber counter run tag @s add 106_bomb_placer
execute if entity @p[tag=106_bomb_placer] as @a[tag=106_bomb_placer] run function project-c:jobaction/106/items/skill/11/replace/execution
execute if entity @p[tag=106_bomb_placer] run tag @a[tag=106_bomb_placer] remove 106_bomb_placer
scoreboard players reset #106_playerNumber
