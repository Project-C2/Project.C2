fill 85 2 -48 81 11 -71 air
setblock 81 2 -71 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=038}] at @s run function project-c:jobaction/038/main",TrackOutput:0b} destroy
setblock 81 2 -70 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute if entity @a[scores={jobNumber=038},limit=1] run function project-c:jobaction/038/main2",TrackOutput:0b} destroy

setblock 85 2 -71 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=038-ExBullet,limit=1] as @e[tag=038-ExBullet] at @s run function project-c:jobaction/038/skill/2/3",TrackOutput:0b} destroy
setblock 85 2 -70 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=038-ExBullet,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
