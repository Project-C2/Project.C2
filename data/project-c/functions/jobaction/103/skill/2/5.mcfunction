tag @s add it
execute as @a[tag=103fireball2_p] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber run tag @s add user
execute as @e[tag=103fireball3] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber run data merge entity @s {Tags:["103enchanted","103fireball4","this"],Motion:[0d,0d,0d],power:[0d,0d,0d]}
tag @s remove it

execute if entity @a[tag=user,team=Red,limit=1] run tag @e[tag=this] add 103fireball4R
execute if entity @a[tag=user,team=Blue,limit=1] run tag @e[tag=this] add 103fireball4B

execute as @a[tag=user] run tp @s @s
effect clear @a[tag=user] levitation
effect give @a[tag=user] minecraft:slow_falling 2 0 true
tag @a[tag=user] remove 103fireball2_p
tag @a[tag=user] remove user
data merge block 133 2 91 {auto:1b}
kill @s