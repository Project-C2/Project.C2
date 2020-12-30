tag @s add 104user
execute as @e[tag=104ponpon_ready] if score @s playerNumber = @a[tag=104user,limit=1,sort=nearest] playerNumber rotated ~ 0 run tp @s ^ ^0.7 ^1 ~ -58.8
tag @s remove 104user
