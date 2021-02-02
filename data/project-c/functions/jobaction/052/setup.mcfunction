#職看板
give @p oak_sign{BlockEntityTag:{Text1:"{\"text\":\"*********-52-*********\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s jobNumber 52\"}}",Text2:"{\"text\":\"【剣豪】\",\"bold\":true,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tag @s add JobChanged\"}}",Text3:"{\"text\":\"右クリックで転職!!\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tellraw @s [\\\"\\\",{\\\"text\\\":\\\"[システム]\\\",\\\"color\\\":\\\"white\\\"},{\\\"text\\\":\\\"剣豪\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":true,\\\"underlined\\\":true},{\\\"text\\\":\\\" に転職しました。\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":false,\\\"underlined\\\":false}]\"}}",Text4:"{\"text\":\"**********************\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data merge block -75 49 -123 {auto:1b}\"}}"},display:{Name:"Custom Sign"}}

#コマブロ
##1段目1列目(メインfunction)
setblock 21 2 -20 minecraft:repeating_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:29117880L,SuccessCount:12,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @a[scores={jobNumber=52}] at @s run function project-c:jobaction/052/main",TrackOutput:0b} destroy

##1段目2列目(第一クロック)
setblock 23 2 -20 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:29049014L,SuccessCount:8,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @a[scores={jobNumber=52},tag=052-1] at @s run function project-c:jobaction/052/skill/1/1a",TrackOutput:0b} destroy
setblock 23 2 -19 minecraft:chain_command_block[conditional=false,facing=up]{auto:1b,powered:0b,LastExecution:29049014L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @a[tag=052-1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

##1段目3列目(無し)
setblock 25 2 -20 air
setblock 25 2 -19 air

##1段目4列目(無し)
setblock 27 2 -20 air
setblock 27 2 -19 air

##2段目1列目(奥義クロックその1)
setblock 21 5 -21 minecraft:obsidian destroy
setblock 21 5 -20 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:29114650L,SuccessCount:9,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @a[scores={jobNumber=52},tag=052-EX-2] at @s run function project-c:jobaction/052/skill/4/1",TrackOutput:0b} destroy
setblock 21 5 -19 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:29114650L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @a[tag=052-EX-2] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

##2段目2列目(強化第一クロック)
setblock 23 5 -21 minecraft:obsidian destroy
setblock 23 5 -20 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:28742113L,SuccessCount:14,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @a[scores={jobNumber=52},tag=052-1] at @s run function project-c:jobaction/052/skill/1/1b",TrackOutput:0b} destroy
setblock 23 5 -19 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:28742113L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @a[tag=052-1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

##3段目3列目(奥義クロックその2)
setblock 21 8 -21 minecraft:obsidian destroy
setblock 21 8 -20 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:29114675L,SuccessCount:5,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=052-EX-6] run function project-c:jobaction/052/skill/4/2",TrackOutput:0b} destroy
setblock 21 8 -19 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:29114675L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=052-EX-6] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy