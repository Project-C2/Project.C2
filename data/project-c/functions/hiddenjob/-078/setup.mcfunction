#職看板
give @s minecraft:dark_oak_sign{BlockEntityTag:{Text1:'{"text":"*********-78-*********","clickEvent":{"action":"run_command","value":"function project-c:hiddenjob/-078/jobchangecheck"},"color":"yellow"}',Text2:'{"text":"\\u3010NINJA\\u3011","bold":true,"underlined":true,"color":"yellow"}',Text3:'{"text":"\\u53f3\\u30af\\u30ea\\u30c3\\u30af\\u3067\\u8ee2\\u8077!!","color":"yellow"}',Text4:'{"text":"**********************","color":"yellow"}'},display:{Name:'{"text":"Custom Sign"}'}}

#スキル系処理用

setblock 81 26 31 minecraft:repeating_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:28943770L,SuccessCount:9,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @e[scores={jobNumber=-78}] at @s run function project-c:hiddenjob/-078/main",TrackOutput:0b}

setblock 81 26 32 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:29212744L,SuccessCount:0,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @e[scores={078-oil=1..}] at @s run function project-c:jobaction/078/oiled",TrackOutput:1b}

setblock 81 29 31 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:28942933L,SuccessCount:6,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @e[tag=-078-dice] at @s run function project-c:hiddenjob/-078/skill/0/1",TrackOutput:0b}

setblock 81 29 32 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:28942933L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=-078-dice] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b}

setblock 87 26 31 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:28844301L,SuccessCount:0,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @e[tag=-078fire] at @s run function project-c:hiddenjob/-078/skill/2/1",TrackOutput:0b}

setblock 87 26 32 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:28844301L,SuccessCount:0,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=-078fire] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b}