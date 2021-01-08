execute store result entity @s Motion[0] double -0.000002 run data get entity @s Motion[0] 1000000
execute store result entity @s Motion[1] double -0.000002 run data get entity @s Motion[1] 1000000
execute store result entity @s Motion[2] double -0.000002 run data get entity @s Motion[2] 1000000
data modify entity @s Owner merge from entity @a[tag=DarkSushiBlader,limit=1] UUID