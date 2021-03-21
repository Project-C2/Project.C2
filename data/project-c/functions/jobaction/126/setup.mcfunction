#職看板
give @p oak_sign{display:{Name:'"126-エアロキャスター"'},BlockEntityTag:{Text1:'{"text":"*********-126-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 126"}}',Text2:'{"text":"【エアロキャスター】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"エアロキャスター\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群

#スキル系処理用
setblock -126 61 -11 minecraft:repeating_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:33897416L,SuccessCount:2,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @a[scores={jobNumber=126}] at @s run function project-c:jobaction/126/main",TrackOutput:0b} destroy

setblock -126 64 -11 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:33896353L,SuccessCount:102,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=126-typhoon,limit=1] as @e[tag=126-typhoon] at @s run function project-c:jobaction/126/skill/2/3",TrackOutput:0b} destroy

setblock -126 64 -10 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:33896353L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=126-typhoon,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock -124 61 -11 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:33896760L,SuccessCount:54,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=126-wind,limit=1] as @e[tag=126-wind] at @s run function project-c:jobaction/126/skill/1/1",TrackOutput:0b} destroy

setblock -124 61 -10 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:33896760L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=126-wind,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock -122 61 -11 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:33895848L,SuccessCount:0,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=126-graif,limit=1] as @e[tag=126-graif] at @s run function project-c:jobaction/126/skill/2/1",TrackOutput:0b} destroy

setblock -122 61 -10 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:33895848L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=126-graif,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock -120 61 -11 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:33896159L,SuccessCount:32,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=126-virvel,limit=1] as @e[tag=126-virvel] at @s run function project-c:jobaction/126/skill/3/1",TrackOutput:0b} destroy

setblock -120 61 -10 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:33896159L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=126-virvel,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
