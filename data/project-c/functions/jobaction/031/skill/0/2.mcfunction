execute at @a[scores={jobNumber=31}] if score @s playerNumber = @a[scores={jobNumber=31},distance=..0.01,limit=1,sort=nearest] counter_3 run tag @a[scores={jobNumber=31},distance=..0.01,limit=1,sort=nearest] add 031-0getkill
execute as @a[tag=031-0getkill] at @s run particle dust 1 0 0 2.5 ~ ~ ~ 2 2 2 1 200 normal @a
execute as @a[tag=031-0getkill] at @s run particle dust 1 0 0 2.5 ~ ~ ~ 2 2 2 1 50 force @a
execute as @a[tag=031-0getkill] at @s run particle minecraft:witch ~ ~ ~ 2 2 2 1 300 normal @a
execute as @a[tag=031-0getkill] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 2 300 normal @a
execute as @a[tag=031-0getkill] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 2 75 force @a
execute as @a[tag=031-0getkill] at @s run playsound minecraft:entity.elder_guardian.ambient master @a ~ ~ ~ 2 2
execute as @a[tag=031-0getkill] at @s run playsound minecraft:entity.zombie_horse.death master @a ~ ~ ~ 2 0.5
scoreboard players add @a[tag=031-0getkill] subcounter 50
tag @a[tag=031-0getkill] remove 031-0getkill