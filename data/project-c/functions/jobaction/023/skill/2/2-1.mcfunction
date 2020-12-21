execute as @e[tag=023-21s] if score @s playerNumber = @e[limit=1,sort=nearest,distance=..0.01,tag=023-21] playerNumber run tag @s add 023-7-21s
execute as @e[tag=023-21s] if score @s playerNumber = @e[limit=1,sort=nearest,distance=..0.01,tag=023-21] playerNumber run tag @s remove 023-21s
tag @s add 023-7-21
tag @s remove 023-21
tag @s remove 023-2test
particle minecraft:dust 0.33 1 1 3 ~ ~ ~ 5 5 5 1 600 normal @a
particle minecraft:dust 0.33 1 1 3 ~ ~ ~ 5 5 5 1 150 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 0.5


data merge block -95 3 -68 {auto:1b}
