#職看板
give @p oak_sign{BlockEntityTag:{Text1:'{"text":"*********-46-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 46"}}',Text2:'{"text":"【シュヴァリエ】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"シュヴァリエ\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'},display:{Name:"Custom Sign"}}

#コマブロ
##1段目1列目(メインfunction)
setblock -75 2 -20 minecraft:repeating_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:36573015L,SuccessCount:7,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @a[scores={jobNumber=46}] positioned as @s run function project-c:jobaction/046/main",TrackOutput:0b} destroy

##1段目2列目(第一クロック)
setblock -73 2 -20 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:36542325L,SuccessCount:0,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @e[tag=046-1,limit=1] at @s run function project-c:jobaction/046/skill/1/1",TrackOutput:0b} destroy
setblock -73 2 -19 minecraft:chain_command_block[conditional=false,facing=up]{auto:1b,powered:0b,LastExecution:36542325L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=046-1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

##1段目3列目(第二クロック)
setblock -71 2 -20 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:36542877L,SuccessCount:10,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @e[tag=046-2,limit=1] at @s run function project-c:jobaction/046/skill/2/1",TrackOutput:0b} destroy
setblock -71 2 -19 minecraft:chain_command_block[conditional=false,facing=up]{auto:1b,powered:0b,LastExecution:36542877L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=046-2] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

##1段目4列目(第三クロック)
setblock -69 2 -20 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:36490770L,SuccessCount:859,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @a[tag=046-3-1a,limit=1] at @s run function project-c:jobaction/046/skill/3/1a",TrackOutput:0b} destroy
setblock -69 2 -19 minecraft:chain_command_block[conditional=false,facing=up]{auto:1b,powered:0b,LastExecution:36490770L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @a[tag=046-3-1a] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -69 2 -18 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:36490820L,SuccessCount:24,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @e[tag=046-3-1c,limit=1] at @s run function project-c:jobaction/046/skill/3/2a",TrackOutput:0b} destroy
setblock -69 2 -17 minecraft:chain_command_block[conditional=false,facing=up]{auto:1b,powered:0b,LastExecution:36490820L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=046-3-1c] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

##2段目4列目(第三追加クロック)
setblock -69 5 -20 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:36490361L,SuccessCount:852,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @a[tag=046-3-1b,limit=1] at @s run function project-c:jobaction/046/skill/3/1b",TrackOutput:0b} destroy
setblock -69 5 -19 minecraft:chain_command_block[conditional=false,facing=up]{auto:1b,powered:0b,LastExecution:36490361L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @a[tag=046-3-1b] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy