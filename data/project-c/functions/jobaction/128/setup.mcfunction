#職看板
give @p oak_sign{display:{Name:'"128-Mercenary"'},BlockEntityTag:{Text1:'{"text":"*********-128-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 128"}}',Text2:'{"text":"【Mercenary】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"Mercenary\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群

#スキル系処理用
setblock -102 61 -11 minecraft:repeating_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:34528592L,SuccessCount:2,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @a[scores={jobNumber=128}] at @s run function project-c:jobaction/128/main",TrackOutput:0b} destroy


setblock -98 61 -11 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:34528006L,SuccessCount:21,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=128-Charge,limit=1] as @e[tag=128-Charge] at @s run function project-c:jobaction/128/skill/2/1",TrackOutput:0b} destroy

setblock -98 61 -10 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:34528006L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=128-Charge,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock -96 61 -11 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:34527828L,SuccessCount:12,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=128-Eviscerate,limit=1] as @e[tag=128-Eviscerate] at @s run function project-c:jobaction/128/skill/3/1",TrackOutput:0b} destroy

setblock -96 61 -10 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:34527828L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=128-Eviscerate,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock -96 64 -11 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:34527859L,SuccessCount:14,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=128-EviscerateS,limit=1] as @e[tag=128-EviscerateS] at @s run function project-c:jobaction/128/skill/3/2",TrackOutput:0b} destroy

setblock -96 64 -10 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:34527859L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=128-EviscerateS,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy