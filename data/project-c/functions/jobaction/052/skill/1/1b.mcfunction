execute if entity @a[tag=052-1,nbt={OnGround:1b}] at @s as @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 0.85
execute at @a[tag=052-1,nbt={OnGround:1b},team=Red] positioned ^ ^ ^4 run tag @e[team=Blue,distance=..3.5] add 052-2
execute at @a[tag=052-1,nbt={OnGround:1b},team=Red] positioned ^ ^ ^8 run tag @e[team=Blue,distance=..3.5] add 052-2
execute at @a[tag=052-1,nbt={OnGround:1b},team=Blue] positioned ^ ^ ^4 run tag @e[team=Red,distance=..3.5] add 052-2
execute at @a[tag=052-1,nbt={OnGround:1b},team=Blue] positioned ^ ^ ^8 run tag @e[team=Red,distance=..3.5] add 052-2
tag @e[tag=052-2,gamemode=!adventure] remove 052-2

execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^1 run particle minecraft:sweep_attack ~ ~ ~ 1.5 1 1.5 1 50 force
execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^2 run particle minecraft:sweep_attack ~ ~ ~ 1.5 1 1.5 1 50 force
execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^3 run particle minecraft:sweep_attack ~ ~ ~ 1.5 1 1.5 1 50 force
execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^4 run particle minecraft:sweep_attack ~ ~ ~ 1.5 1 1.5 1 50 force
execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^5 run particle minecraft:sweep_attack ~ ~ ~ 1.5 1 1.5 1 50 force
execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^6 run particle minecraft:sweep_attack ~ ~ ~ 1.5 1 1.5 1 50 force
execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^7 run particle minecraft:sweep_attack ~ ~ ~ 1.5 1 1.5 1 50 force
execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^8 run particle minecraft:sweep_attack ~ ~ ~ 1.5 1 1.5 1 50 force
execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^9 run particle minecraft:sweep_attack ~ ~ ~ 1.5 1 1.5 1 50 force
execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^10 run particle minecraft:sweep_attack ~ ~ ~ 1.5 1 1.5 1 50 force

execute at @e[tag=052-2] run summon arrow ~ ~2.5 ~ {damage:6d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-2] run scoreboard players add @a[tag=052-1] counter 12
scoreboard players set @s counter_1 100

tag @a[tag=052-1,nbt={OnGround:1b}] remove 052-1
tag @e[tag=052-2] remove 052-2
tag @s remove 052-3