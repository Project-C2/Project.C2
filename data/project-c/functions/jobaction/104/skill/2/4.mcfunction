tag @s add 104user
execute as @e[tag=104ponpon_ready] if score @s playerNumber = @a[tag=104user,limit=1,sort=nearest] playerNumber run tag @s add 104ponpon
tag @s remove 104user

tag @e[tag=104ponpon,tag=104ponpon_ready] remove 104ponpon_ready
playsound minecraft:entity.witch.throw master @a ~ ~ ~ 1 0.8
particle explosion ^ ^0.7 ^1 0.1 0.1 0.1 1 3 normal @a
particle explosion ^ ^0.7 ^1 0 0 0 1 1 force @a
data merge block -122 61 -62 {auto:1b}