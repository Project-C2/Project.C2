execute as @a[scores={jobNumber=126}] at @s as @e[tag=126-graif] if score @s playerNumber = @a[limit=1,sort=nearest] playerNumber rotated as @a[limit=1,sort=nearest] positioned as @s if block ^ ^ ^1 minecraft:air run teleport @s ^ ^ ^1 ~ ~

scoreboard players add @s counter 1

particle minecraft:cloud ^ ^1 ^0.5 0.4 0.7 0.4 0 2 force @a
kill @s[scores={counter=600..}]