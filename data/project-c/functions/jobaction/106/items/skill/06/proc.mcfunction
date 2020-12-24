#スキル6
scoreboard players add @s counter 1

execute if score @s counter matches 160 if entity @s[tag=106_wall_center] run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0.7
execute if score @s counter matches 160 if entity @s[type=shulker] run particle block smooth_stone ~ ~0.5 ~ 0.2 0.2 0.2 0 2 force
execute if score @s counter matches 160.. run tp @s ~ ~-512 ~
execute if score @s counter matches 160 run kill @s
