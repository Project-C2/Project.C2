scoreboard players operation #110- playerNumber = @s playerNumber
tag @s add this
execute as @a if score @s playerNumber = #110- playerNumber at @s anchored eyes run tp @e[tag=this,limit=1] ^ ^ ^ ~ ~
execute if score @s counter matches ..15 as @a if score @s playerNumber = #110- playerNumber run effect give @s minecraft:slowness 1 0
tag @s remove this
particle minecraft:falling_dust lapis_block ^ ^ ^1 1 1 1 1 4 normal @a
execute if score @s counter matches 1 run playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 2 0.75
execute if score @s counter matches 3 run playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 2 0.775
execute if score @s counter matches 5 run playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 2 0.800
execute if score @s counter matches 7 run playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 2 0.825
execute if score @s counter matches 9 run playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 2 0.85
execute if score @s counter matches 11 run playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 2 0.875
execute if score @s counter matches 13 run playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 2 0.900
execute if score @s counter matches 15 run playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 2 0.925
execute if score @s counter matches 17 run playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 2 0.950
execute if score @s counter matches 19 run playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 2 0.975
execute if score @s counter matches 21 run playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 2 1.000
execute if score @s counter matches 34 run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 0.8

execute if score @s counter matches 21 rotated ~180 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 30 normal @a
execute if score @s counter matches 19 rotated ~162 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 19 rotated ~-162 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 17 rotated ~144 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 17 rotated ~-144 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 15 rotated ~126 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 15 rotated ~-126 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 13 rotated ~108 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 13 rotated ~-108 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 11 rotated ~90 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 11 rotated ~-90 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 9 rotated ~72 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 9 rotated ~-72 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 7 rotated ~54 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 7 rotated ~-54 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 5 rotated ~36 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 5 rotated ~-36 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 3 rotated ~18 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 3 rotated ~-18 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 1 rotated ~0 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 30 normal @a
execute if score @s counter matches 22 rotated ~171 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 22 rotated ~-171 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 24 rotated ~153 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 24 rotated ~-153 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 26 rotated ~135 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 26 rotated ~-135 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 27 rotated ~117 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 27 rotated ~-117 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 30 rotated ~99 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 30 rotated ~-99 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 32 rotated ~81 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 32 rotated ~-81 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 34 rotated ~63 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
execute if score @s counter matches 34 rotated ~-63 0 positioned ^ ^ ^2 run particle minecraft:dust 0.33 0.33 1 1.5 ~ ~1 ~ 0 2 0 0 15 normal @a
scoreboard players reset #110- playerNumber
