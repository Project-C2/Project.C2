tag @s add user
execute as @e[tag=093fish_ready] if score @s playerNumber = @e[tag=user,limit=1] playerNumber run tag @s add this
execute as @e[tag=this] at @s rotated as @e[tag=user,limit=1] run tp @s ~ ~ ~ ~ ~
tag @s remove user

playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 2.25 1.6
particle minecraft:witch ~ ~ ~ 4 1 4 1 800 normal @a
particle minecraft:witch ~ ~ ~ 4 1 4 1 200 force @a
particle minecraft:witch ^ ^ ^5 2 1 2 1 280 normal @a
particle minecraft:witch ^ ^ ^5 2 1 2 1 70 force @a

tag @e[tag=this] add 093fish
tag @e[tag=this] remove this

data merge block 13 2 93 {auto:1b}
kill @s