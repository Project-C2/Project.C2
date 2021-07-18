fill 105 2 -71 111 11 -46 air
setblock 105 2 -71 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=040}] at @s run function project-c:jobaction/040/main",TrackOutput:0b} destroy

setblock 107 2 -71 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=040-ZaihouA,limit=1] as @e[tag=040-ZaihouA] at @s run function project-c:jobaction/040/skill/1/1",TrackOutput:0b} destroy
setblock 107 2 -70 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=040-ZaihouA,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 107 2 -69 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=040-ZaihouB,limit=1] as @e[tag=040-ZaihouB] at @s run function project-c:jobaction/040/skill/1/3",TrackOutput:0b} destroy
setblock 107 2 -68 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=040-ZaihouB,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 109 2 -71 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=040-Bullet,limit=1] as @e[tag=040-Bullet] at @s run function project-c:jobaction/040/skill/2/2",TrackOutput:0b} destroy
setblock 109 2 -70 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=040-Bullet,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 111 2 -71 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=040-Enuma,limit=1] as @e[tag=040-Enuma] at @s run function project-c:jobaction/040/skill/3/2",TrackOutput:0b} destroy
setblock 111 2 -70 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=040-Enuma,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 111 2 -69 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=040-Enuma2,limit=1] as @e[tag=040-Enuma2] at @s run function project-c:jobaction/040/skill/3/3",TrackOutput:0b} destroy
setblock 111 2 -68 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=040-Enuma2,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
