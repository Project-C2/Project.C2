teleport @s ^ ^ ^1 ~ ~

particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.1 5 force @a
particle minecraft:dust 0 1 1 2 ~ ~1.5 ~ 0.5 1 0.5 0 3 force @a
scoreboard players add @s counter 1
scoreboard players add @s counter_1 1


execute if entity @s[scores={counter_1=2},tag=061-iceR2] run summon falling_block ~ ~ ~ {BlockState:{Name:"packed_ice"},Data:0,Time:1,DropItem:0,NoGravity:1b,Tags:["061-iceR3","061-icew"]}
execute if entity @s[scores={counter_1=2},tag=061-iceR2] run summon falling_block ~ ~1 ~ {BlockState:{Name:"packed_ice"},Data:0,Time:1,DropItem:0,NoGravity:1b,Tags:["061-iceR3","061-icew"]}
execute if entity @s[scores={counter_1=2},tag=061-iceR2] run summon falling_block ~ ~2 ~ {BlockState:{Name:"packed_ice"},Data:0,Time:1,DropItem:0,NoGravity:1b,Tags:["061-iceR3","061-icew"]}

execute if entity @s[scores={counter_1=2},tag=061-iceB2] run summon falling_block ~ ~ ~ {BlockState:{Name:"packed_ice"},Data:0,Time:1,DropItem:0,NoGravity:1b,Tags:["061-iceB3","061-icew"]}
execute if entity @s[scores={counter_1=2},tag=061-iceB2] run summon falling_block ~ ~1 ~ {BlockState:{Name:"packed_ice"},Data:0,Time:1,DropItem:0,NoGravity:1b,Tags:["061-iceB3","061-icew"]}
execute if entity @s[scores={counter_1=2},tag=061-iceB2] run summon falling_block ~ ~2 ~ {BlockState:{Name:"packed_ice"},Data:0,Time:1,DropItem:0,NoGravity:1b,Tags:["061-iceB3","061-icew"]}



playsound minecraft:block.glass.break master @a ~ ~ ~ 2 1.5
scoreboard players set @s[scores={counter_1=2}] counter_1 0
execute as @s[scores={counter=8..}] at @s run data merge block 133 8 20 {auto:1b}
kill @s[scores={counter=8..}]