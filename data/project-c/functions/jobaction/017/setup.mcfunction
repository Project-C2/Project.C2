#職看板
give @p oak_sign{display:{Name:'"17-アンタレス"'},BlockEntityTag:{Text1:'{"text":"*********-17-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 17"}}',Text2:'{"text":"【アンタレス】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"アンタレス\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群

#スキル系処理用
setblock 81 2 -122 minecraft:repeating_command_block[conditional=false,facing=south]{Command:"execute as @e[scores={jobNumber=17}] at @s run function project-c:jobaction/017/main",CustomName:'{"text":"@"}',LastExecution:39332339L,SuccessCount:2,TrackOutput:0b,UpdateLastExecution:1b,auto:1b,conditionMet:1b,powered:0b}

setblock 83 2 -122 minecraft:repeating_command_block[conditional=false,facing=south]{Command:"execute if entity @e[tag=017-SetCircle] as @e[tag=017-SetCircle] at @s run function project-c:jobaction/017/skill/1/1",CustomName:'{"text":"@"}',LastExecution:39332453L,SuccessCount:0,TrackOutput:0b,UpdateLastExecution:1b,auto:1b,conditionMet:1b,powered:0b}
setblock 83 2 -121 minecraft:chain_command_block[conditional=false,facing=south]{Command:"execute unless entity @e[tag=017-SetCircle] run data merge block ~ ~ ~-1 {auto:0b}",CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:0b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b}

setblock 85 2 -122 minecraft:repeating_command_block[conditional=false,facing=south]{Command:"execute if entity @e[tag=017-Infelno] as @e[tag=017-Infelno] at @s run function project-c:jobaction/017/skill/2/1",CustomName:'{"text":"@"}',LastExecution:39332584L,SuccessCount:0,TrackOutput:0b,UpdateLastExecution:1b,auto:1b,conditionMet:1b,powered:0b}
setblock 85 2 -121 minecraft:chain_command_block[conditional=false,facing=south]{Command:"execute unless entity @e[tag=017-Infelno] run data merge block ~ ~ ~-1 {auto:0b}",CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:0b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b}

setblock 87 2 -122 minecraft:repeating_command_block[conditional=false,facing=south]{Command:"execute if entity @e[tag=017-Starfall] as @e[tag=017-Starfall] at @s run function project-c:jobaction/017/skill/3/1",CustomName:'{"text":"@"}',LastExecution:39332687L,SuccessCount:0,TrackOutput:0b,UpdateLastExecution:1b,auto:1b,conditionMet:1b,powered:0b}
setblock 87 2 -121 minecraft:chain_command_block[conditional=false,facing=south]{Command:"execute unless entity @e[tag=017-Starfall] run data merge block ~ ~ ~-1 {auto:0b}",CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:0b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b}

setblock 87 5 -122 minecraft:repeating_command_block[conditional=false,facing=south]{Command:"execute if entity @e[tag=017-StarMeteor] as @e[tag=017-StarMeteor] at @s run function project-c:jobaction/017/skill/3/4",CustomName:'{"text":"@"}',LastExecution:39330216L,SuccessCount:72,TrackOutput:0b,UpdateLastExecution:1b,auto:0b,conditionMet:1b,powered:0b}
setblock 87 5 -121 minecraft:chain_command_block[conditional=false,facing=south]{Command:"execute unless entity @e[tag=017-StarMeteor] run data merge block ~ ~ ~-1 {auto:0b}",CustomName:'{"text":"@"}',LastExecution:39330216L,SuccessCount:1,TrackOutput:0b,UpdateLastExecution:1b,auto:1b,conditionMet:1b,powered:0b}
