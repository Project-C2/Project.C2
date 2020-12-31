tag @s add 104user
execute as @e[tag=104ponpon_ready] if score @s playerNumber = @a[tag=104user,limit=1,sort=nearest] playerNumber run tag @s add 104ponpon
tag @s remove 104user

execute rotated as @e[tag=104ponpon,tag=104ponpon_ready,limit=1] positioned 0.0 0.5 0.0 run summon area_effect_cloud ^ ^ ^0.34 {Tags:["104vector"],Duration:1}
data merge entity @e[tag=104ponpon,tag=104ponpon_ready,limit=1] {NoGravity:0b}
data modify entity @e[tag=104ponpon,tag=104ponpon_ready,limit=1] Motion set from entity @e[tag=104vector,limit=1] Pos
kill @e[tag=104vector,limit=1]
tag @e[tag=104ponpon,tag=104ponpon_ready] remove 104ponpon_ready
playsound minecraft:entity.witch.throw master @a ~ ~ ~ 1 0.8
particle explosion ^ ^0.7 ^1 0.1 0.1 0.1 1 3 normal @a
particle explosion ^ ^0.7 ^1 0 0 0 1 1 force @a
data merge block -122 61 -62 {auto:1b}