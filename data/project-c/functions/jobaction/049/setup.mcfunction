fill -39 2 4 -33 8 -20 air
setblock -39 2 -20 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=049}] at @s run function project-c:jobaction/049/main",TrackOutput:0b} destroy
setblock -37 2 -20 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=049-Dynamo,limit=1] as @e[tag=049-Dynamo] at @s run function project-c:jobaction/049/skill/1/1",TrackOutput:0b} destroy
setblock -37 2 -19 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=049-Dynamo,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -37 2 -18 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=049-Anker,limit=1] as @e[tag=049-Anker] at @s run function project-c:jobaction/049/skill/1/3",TrackOutput:0b} destroy
setblock -37 2 -17 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=049-Anker,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -35 2 -20 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=049-Allay,limit=1] as @e[tag=049-Allay] at @s run function project-c:jobaction/049/skill/2/1",TrackOutput:0b} destroy
setblock -35 2 -19 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=049-Allay,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -33 2 -20 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @a[scores={49Raiko=1..},limit=1] as @a[scores={49Raiko=1..}] at @s run function project-c:jobaction/049/skill/3/1",TrackOutput:0b} destroy
setblock -33 2 -19 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @a[scores={49Raiko=1..},limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

