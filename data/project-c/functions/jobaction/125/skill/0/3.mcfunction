scoreboard players add @s counter 1

particle minecraft:end_rod ~ ~1 ~ 0.4 0.4 0.4 0 3 force @a

execute if entity @s[nbt={OnGround:1b}] run effect clear @a[scores={jobNumber=125,subcounter=1..},limit=1,sort=nearest] levitation
execute if entity @s[scores={counter=41..}] run effect clear @a[scores={jobNumber=125,subcounter=1..},limit=1,sort=nearest] levitation
kill @s[nbt={OnGround:1b}]
kill @s[scores={counter=41..}]