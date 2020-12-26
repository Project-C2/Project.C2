execute as @a[scores={jobNumber=66}] at @s as @e[tag=066-Banish] if score @s playerNumber = @a[limit=1,sort=nearest] playerNumber rotated as @a[limit=1,sort=nearest] positioned as @s if block ^ ^ ^0.7 minecraft:air run teleport @s ^ ^ ^0.7 ~ ~

scoreboard players add @s counter 1

particle minecraft:witch ^ ^1 ^0.5 0.4 0.7 0.4 1 7 force @a

kill @s[scores={counter=600..}]