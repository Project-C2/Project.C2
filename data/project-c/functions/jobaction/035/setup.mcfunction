#職看板
give @p oak_sign{BlockEntityTag:{Text1:"{\"text\":\"*********-35-*********\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s jobNumber 35\"}}",Text2:"{\"text\":\"【光輝の射手】\",\"bold\":true,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tag @s add JobChanged\"}}",Text3:"{\"text\":\"右クリックで転職!!\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tellraw @s [\\\"\\\",{\\\"text\\\":\\\"[システム]\\\",\\\"color\\\":\\\"white\\\"},{\\\"text\\\":\\\"光輝の射手\\\",\\\"color\\\":\\\"yellow\\\",\\\"bold\\\":true,\\\"underlined\\\":true},{\\\"text\\\":\\\" に転職しました。\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":false,\\\"underlined\\\":false}]\"}}",Text4:"{\"text\":\"**********************\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data merge block -75 49 -123 {auto:1b}\"}}"},display:{Name:"Custom Sign"}}

#動作必須コマブロ群
#drop処理用
setblock -69 27 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -69 27 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=35,drop=1..}] run function project-c:jobaction/035/replaceitem/0",TrackOutput:0b} destroy
setblock -73 17 -115 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=35,drop=1..}] run data merge block -69 27 -122 {auto:1b}",TrackOutput:0b} destroy
#スキル系処理用
setblock 45 2 -71 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=35}] at @s run function project-c:jobaction/035/main",TrackOutput:0b} destroy
setblock 47 2 -71 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=035-1Bow] as @e[tag=035-1Bow] at @s run function project-c:jobaction/035/skill/1/1",TrackOutput:0b} destroy
setblock 49 2 -71 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=035Arrow] as @e[tag=035Arrow] at @s run function project-c:jobaction/035/skill/2/1",TrackOutput:0b} destroy
setblock 51 2 -71 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=035-animaBow] as @e[tag=035-animaBow] at @s run function project-c:jobaction/035/skill/3/1",TrackOutput:0b} destroy
setblock 49 2 -69 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=035Arrow2] as @e[tag=035Arrow2] at @s run function project-c:jobaction/035/skill/2/2",TrackOutput:0b} destroy
setblock 51 2 -69 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=035-animaShot] as @e[tag=035-animaShot] at @s run function project-c:jobaction/035/skill/3/2",TrackOutput:0b} destroy

#{Command:"",TrackOutput:0b}

setblock 47 2 -70 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=035-1Bow] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 49 2 -70 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=035Arrow] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 51 2 -70 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=035-animaBow] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 49 2 -68 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=035Arrow2] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 51 2 -68 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=035-animaShot] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

