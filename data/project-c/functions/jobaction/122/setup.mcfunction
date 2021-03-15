#職看板
give @p oak_sign{display:{Name:'"111-Bandit"'},BlockEntityTag:{Text1:'{"text":"*********-122-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 122"}}',Text2:'{"text":"【サイコソルジャー】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"サイコソルジャー\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群

#スキル系処理用
setblock 90 61 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:29430844L,SuccessCount:2,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @a[scores={jobNumber=122}] at @s run function project-c:jobaction/122/main",TrackOutput:0b} destroy

setblock 90 61 -61 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:29430970L,SuccessCount:0,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @a[scores={jobNumber=122,subcounter=1}] run function project-c:jobaction/122/phyco/tick",TrackOutput:1b} destroy

setblock 92 61 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:29426446L,SuccessCount:12,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=122-phycoball,limit=1] as @e[tag=122-phycoball] at @s run function project-c:jobaction/122/skill/1/1",TrackOutput:0b} destroy

setblock 92 61 -61 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:29426446L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=122-phycoball,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 94 61 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:29426273L,SuccessCount:9,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @e[tag=122sword] at @s run function project-c:jobaction/122/skill/2/1",TrackOutput:0b} destroy

setblock 94 61 -61 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:29426273L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=122sword] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 94 64 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:29426284L,SuccessCount:35,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @e[tag=122-swordD] at @s run function project-c:jobaction/122/skill/2/2",TrackOutput:0b} destroy

setblock 94 64 -61 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:29426284L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=122-swordD] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 96 61 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:29426718L,SuccessCount:13,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=122-phycobeamF,limit=1] as @e[tag=122-phycobeamF] at @s run function project-c:jobaction/122/skill/3/2",TrackOutput:0b} destroy

setblock 96 61 -61 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:29426718L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=122-phycobeamF,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 96 64 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:29426759L,SuccessCount:7,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=122-phycobeam,limit=1] as @e[tag=122-phycobeam] at @s run function project-c:jobaction/122/skill/3/3",TrackOutput:0b} destroy

setblock 96 64 -61 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:29426759L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=122-phycobeam,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy