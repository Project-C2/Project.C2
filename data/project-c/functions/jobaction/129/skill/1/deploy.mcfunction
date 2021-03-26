particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
particle minecraft:dust 1 0 0 1 ~ ~ ~ 1 1 1 0 20 force
particle minecraft:dust 0 0 0 1 ~ ~ ~ 1 1 1 0 20 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.8

data merge entity @s {Glowing:1b}

tag @s remove 129-silenth-deploy
tag @s add 129-silenth-deploying
