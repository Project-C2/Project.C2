execute if entity @a[tag=052-1,nbt={OnGround:1b}] at @s as @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1
execute at @a[tag=052-1,nbt={OnGround:1b},team=Red] positioned ^ ^ ^2 run tag @e[team=Blue,distance=..2.5] add 052-2
execute at @a[tag=052-1,nbt={OnGround:1b},team=Red] positioned ^ ^ ^4 run tag @e[team=Blue,distance=..2.5] add 052-2
execute at @a[tag=052-1,nbt={OnGround:1b},team=Blue] positioned ^ ^ ^2 run tag @e[team=Red,distance=..2.5] add 052-2
execute at @a[tag=052-1,nbt={OnGround:1b},team=Blue] positioned ^ ^ ^4 run tag @e[team=Red,distance=..2.5] add 052-2
tag @e[tag=052-2,gamemode=!adventure] remove 052-2

execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^1 run particle minecraft:sweep_attack ~ ~ ~ 0 1 0 1 20 force
execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^2 run particle minecraft:sweep_attack ~ ~ ~ 0 1 0 1 20 force
execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^3 run particle minecraft:sweep_attack ~ ~ ~ 0 1 0 1 20 force
execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^4 run particle minecraft:sweep_attack ~ ~ ~ 0 1 0 1 20 force
execute if entity @a[tag=052-1,nbt={OnGround:1b}] as @s at @s positioned ^ ^1 ^5 run particle minecraft:sweep_attack ~ ~ ~ 0 1 0 1 20 force

execute at @e[tag=052-2] run summon arrow ~ ~2.5 ~ {damage:3.0d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-2] run scoreboard players add @a[tag=052-1] counter 8

tag @a[tag=052-1,nbt={OnGround:1b}] remove 052-1
tag @e[tag=052-2] remove 052-2