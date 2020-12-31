tag @s add 104charge
execute as @a[scores={jobNumber=104}] if score @s CT3 matches ..1201 if score @s playerNumber = @e[tag=104charge,limit=1,sort=nearest] playerNumber run tag @s add 104user
execute if entity @a[tag=104user,limit=1] as @a[tag=104user] run clear @s minecraft:compass{CT:3} 15
execute if entity @a[tag=104user,limit=1] as @a[tag=104user] run scoreboard players add @s CT3 300
execute if entity @a[tag=104user,limit=1] run tag @a[tag=104user] remove 104user
tag @s remove 104charge
