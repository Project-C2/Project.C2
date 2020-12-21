execute as @e[tag=023-24s] if score @s playerNumber = @e[limit=1,sort=nearest,distance=..0.01,tag=023-24] playerNumber run kill @s
particle minecraft:dust 0.33 1 0.33 3 ~ ~ ~ 5 5 5 1 600 normal @a
particle minecraft:dust 0.33 1 0.33 3 ~ ~ ~ 5 5 5 1 150 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1
execute if entity @s[team=RedDummy] run effect give @e[tag=Battle,team=!Red,distance=..2.5] minecraft:speed 1 99
execute if entity @s[team=BlueDummy] run effect give @e[tag=Battle,team=!Blue,distance=..2.5] minecraft:speed 1 99

data merge block -95 6 -68 {auto:1b}